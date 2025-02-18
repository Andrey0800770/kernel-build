# Android 15 on Galaxy S9+/S9 Snapdragon

### Warning: Android 15 is in its early development stage, so all GSIs currently have some issues. Do not install expecting everything to work or that any GSI will function perfectly.

## Tested GSIs:

### EvolutionX 10.3
- [EvolutionX 10.3 Releases](https://github.com/mytja/treble_evo/releases)
- To fix Samsung features not appearing on PHH Settings, install this module in KSU: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/TrebleGSIProps_1.1.zip)

### AOSP Treble
- [AOSP Treble Releases](https://github.com/TrebleDroid/treble_experimentations/releases)
- Before installing: download [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-androi...) also download a Browser, as the system comes without one. 

## How to Install

### Download
- Download the Kernel: [Download](https://github.com/Andrey0800770/samsung_sdm845-kernel/releases)
- Download the [Permissiver](https://sourceforge.net/projects/sgsi137/files/Permissiver%20v5.zip/download)
- Download the GSI (I recommend installing the tested ones, as some GSIs are not working)
- Download the Android 15 Fix
  - [For S9+](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/Android-15-Fix.zip)
  - [For S9](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/Android-15-Fix-S9.zip)

### Installation in TWRP
- Backup (boot and vendor)
- Install the Kernel
- Install the Permissiver
- Install the GSI
- Install the Android 15 Fix (this will modify your device's vendor)
- Format Data
- Reboot to System (The device may restart on the first boot, wait for it to restart, and it will boot normally).
