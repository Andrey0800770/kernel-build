#!/bin/bash

# Define constants
DEBUG_PARTITION="/dev/block/platform/soc/1d84000.ufshc/by-name/debug"
OUTPUT_DIR="/sdcard"
DUMP_FILE="$OUTPUT_DIR/debug_dump.bin"
HEADER_OFFSET=0
HEADER_SIZE=4096  # SEC_DEBUG_RESET_HEADER_SIZE
KLOG_OFFSET=1048576  # 1MB
KLOG_SIZE=2097152  # ~2MB
AP_KLOG_IDX_OFFSET=12  # Offset of ap_klog_idx in header

# Get current date in yyyymmdd format
DATE_SUFFIX=$(date +%Y%m%d)

# Function to extract a specific log
extract_log() {
    local log_name=$1
    local offset=$2
    local size=$3
    local ext=$4
    local output_file="$OUTPUT_DIR/${log_name}-${DATE_SUFFIX}${ext}"
    local temp_file="$OUTPUT_DIR/${log_name}_temp${ext}"

    if [ "$log_name" = "klog" ]; then
        extract_klog
    else
        echo "Extracting $log_name..."
        dd if="$DUMP_FILE" of="$temp_file" bs=1 skip=$offset count=$size 2>/dev/null
        if [ $? -eq 0 ]; then
            # Clean NULL bytes and trailing nulls for HTML files
            if [ "$ext" = ".html" ]; then
                # Remove NULL bytes and trim trailing nulls
                tr -d '\000' < "$temp_file" | sed 's/[[:space:]]*$//' > "$output_file"
                # Remove empty lines at the end
                sed -i '/^[[:space:]]*$/d' "$output_file"
            else
                # For other file types, just remove NULL bytes
                tr -d '\000' < "$temp_file" > "$output_file"
            fi
            rm -f "$temp_file"
            echo "Extracted: $output_file"
        else
            echo "Error extracting $log_name."
            rm -f "$temp_file"
        fi
    fi
}

# Function to extract klog with circular buffer logic
extract_klog() {
    local output_file="$OUTPUT_DIR/klog-${DATE_SUFFIX}.log"
    local temp_file="$OUTPUT_DIR/klog_temp.log"

    echo "Extracting klog..."
    
    # Extract the full klog buffer
    dd if="$DUMP_FILE" of="$output_file" bs=1 skip=$KLOG_OFFSET count=$KLOG_SIZE 2>/dev/null
    
    if [ $? -eq 0 ]; then
        # Clean NULL bytes from klog
        tr -d '\000' < "$output_file" > "$temp_file"
        mv "$temp_file" "$output_file"
        echo "Extracted: $output_file"
    else
        echo "Error extracting klog."
        rm -f "$temp_file"
        return 1
    fi
}

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script requires root privileges."
    exit 1
fi

# Check if debug partition exists
if [ ! -e "$DEBUG_PARTITION" ]; then
    echo "Error: Debug partition $DEBUG_PARTITION not found."
    exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Extract the entire debug partition (requires root)
echo "Extracting debug partition..."
dd if="$DEBUG_PARTITION" of="$DUMP_FILE" bs=1M count=10 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Error extracting debug partition."
    rm -f "$DUMP_FILE"
    exit 1
fi

# Extract klog
extract_log "klog" 1048576 2097152 ".log"

# Extract summary
extract_log "summary" 3145728 2097152 ".html"

# Clean up temporary file
rm -f "$DUMP_FILE"
