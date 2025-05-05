# Android 15 (Only QPR1) on Galaxy S9+/S9/N9 Snapdragon

### Warning: Do not install expecting everything to work or that any GSI will function perfectly.

#### Bootloop-fix: It makes the lock screen stop working, because it is the cause of the bootloop. 

## Tested GSIs:

<details>
<summary>LineageOS 22.1</summary>

- [LineageOS Releases](https://github.com/MisterZtr/LineageOS_gsi/releases)
- Before starting, install in TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Lock screen does not work

</details>

<details>
<summary>InfinityX 2.5</summary>

- [InfinityX Releases](https://github.com/Doze-off/manifest/releases/tag/2025-05-02)
- Before starting, install in TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Lock screen does not work

</details>

<details>
<summary>VoltageOS 4.2</summary>

- [VoltageOS Releases](https://github.com/cawilliamson/treble_voltage/releases/)

</details>

<details>
<summary>EvolutionX 10.3</summary>

- [EvolutionX 10.3 Releases](https://github.com/mytja/treble_evo/releases)
- 10.3.1 requires: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip) and the lock screen does not work.
- To fix Samsung Features not appearing in PHH Settings, install this module in KSU: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/TrebleGSIProps_1.1.zip)

</details>

<details>
<summary>2by2 Project</summary>

- [2by2 Releases](https://github.com/MisterZtr/2by2_gsi/releases)
- Before starting, install in TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Lock screen does not work

</details>

<details>
<summary>BreezeOS</summary>

- [BreezeOS Releases](https://t.me/CottonCloudFiles)
- Before starting, install in TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Lock screen does not work

</details>

<details>
<summary>AOSP Treble R9 ci-20250117</summary>

- [AOSP Treble Releases](https://github.com/TrebleDroid/treble_experimentations/releases)
- Before installing: download [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-android-apk-download/) and download a Browser, as the system comes without one. Install the APKs when starting the GSI.

</details>

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

## Brightness Fix: 
Phh Treble Settings ->
Samsung features ->
- Set to 0: backlight scale/max backlight level
- Enable: Enable extended brightness range

Back to Phh Treble Settings ->
Misc Features ->
- Enable: Set alternative brightness curve
