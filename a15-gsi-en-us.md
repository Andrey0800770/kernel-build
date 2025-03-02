# Android 15 on Galaxy S9+/S9/N9 Snapdragon

### Warning: Android 15 is in its early development stage, so all GSIs currently have some issues. Do not install expecting everything to work or that any GSI will function perfectly.

## Tested GSIs:

### EvolutionX 10.3
- [EvolutionX 10.3 Releases](https://github.com/mytja/treble_evo/releases)
- To fix Samsung features not appearing on PHH Settings, install this module in KSU: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/TrebleGSIProps_1.1.zip)

### AOSP Treble
- [AOSP Treble Releases](https://github.com/TrebleDroid/treble_experimentations/releases)
- Before installing: download [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-android-apk-download/) also download a Browser, as the system comes without one. 

## How to Install

### Download
- Download the Kernel: [Download](https://github.com/Andrey0800770/samsung_sdm845-kernel/releases)
- Download the [Permissiver](https://sourceforge.net/projects/sgsi137/files/Permissiver%20v5.zip/download)
- Download the GSI (I recommend installing the tested ones, as some GSIs are not working)
- Download the [Android 15 GSI Fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/Android-15-GSI-Fix.zip)


### Installation in TWRP
- Backup (boot and vendor)
- Install the Kernel
- Install the Permissiver
- Install the GSI
- Install the Android 15 Fix (this will modify your device's vendor)
- Format Data
- Reboot to System (The device may restart on the first boot, wait for it to restart, and it will boot normally).

## Recommended modules 
- Lag Fix: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/Fix%20GSI%20Lags%20V1.0.zip)
  - Fix lag when scrolling.
- Fix StatusBar Padding, AOD and Round Corners: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/Fix%20StatusBar%20Padding,%20AOD%20and%20Round%20Corners%20V2.0.zip)
  - Fix time and battery icons off screen.


