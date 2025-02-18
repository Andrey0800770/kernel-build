# Android 15 on Galaxy S9+/S9/N9 Snapdragon

#### Warning: Android 15 is in its early development stage, so all GSIs currently have some issues. Do not install expecting everything to work or that any GSI will function perfectly.

## Tested GSIs:

### EvolutionX 10.3
- [EvolutionX 10.3 Releases](https://github.com/mytja/treble_evo/releases)
- To fix Samsung settings not appearing, install this module in KSU:

### AOSP Treble
- [AOSP Treble Releases](https://github.com/TrebleDroid/treble_experimentations/releases)
- Before installing: download [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-androi...)

## How to Install

### Download
- Download the Kernel: [Download](https://github.com/backslashxx/KernelSU/releases)
- Download the [Permissiver](https://sourceforge.net/projects/sgsi137/files/Permissiver%20v5.zip/download)
- Download the GSI (I recommend installing the tested ones, as some GSIs are not working)
- Download the Android 15 Fix

### Installation in TWRP
- Backup (boot and vendor)
- Install the Kernel
- Install the Permissiver
- Install the GSI
- Install the Android 15 Fix (this will modify your device's vendor)
- Format Data
- Reboot to System (The device may restart on the first boot, wait for it to restart, and it will boot normally).
