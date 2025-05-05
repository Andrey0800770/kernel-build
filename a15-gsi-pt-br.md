# Android 15 (Apenas QPR1) no Galaxy S9+/S9/N9 Snapdragon
### Aviso: Não instale achando que tudo estará funcionando ou que qualquer GSI funcionará perfeitamente.

#### Bootloop-fix: Faz tela de bloqueio parar de funcionar, porque é a causa o bootloop.

## GSIs Testadas:

<details>
<summary>LineageOS 22.1</summary>

- [LineageOS Releases](https://github.com/MisterZtr/LineageOS_gsi/releases)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona

</details>

<details>
<summary>InfinityX 2.5</summary>

- [InfinityX Releases](https://github.com/Doze-off/manifest/releases/tag/2025-05-02)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona
</details>

<details>
<summary>VoltageOS 4.2</summary>

- [VoltageOS Releases](https://github.com/cawilliamson/treble_voltage/releases/)

</details>

<details>
<summary>EvolutionX 10.3</summary>

- [EvolutionX 10.3 Releases](https://github.com/mytja/treble_evo/releases)
- 10.3.1 precisa de: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip) e a tela de bloqueio não funciona.
- Para corrigir o Samsung Features não aparecendo no PHH Settings, instale este módulo no KSU: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/TrebleGSIProps_1.1.zip)

</details>

<details>
<summary>2by2 Project</summary>

- [2by2 Releases](https://github.com/MisterZtr/2by2_gsi/releases)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona

</details>

<details>
<summary>BreezeOS</summary>

- [BreezeOS Releases](https://t.me/CottonCloudFiles)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona

</details>

<details>
<summary>AOSP Treble R9 ci-20250117</summary>

- [AOSP Treble Releases](https://github.com/TrebleDroid/treble_experimentations/releases)
- Antes de instalar: baixe o [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-android-apk-download/) e baixe algum Navegador, porque o sistema vem sem nenhum. Instale os apks quando iniciar a GSI.

</details>

## Como instalar
### Baixe:

- Baixe o Kernel: [Download](https://github.com/Andrey0800770/samsung_sdm845-kernel/releases)
- Baixe o [Permissiver](https://sourceforge.net/projects/sgsi137/files/Permissiver%20v5.zip/download)
- Baixe a GSI (Recomendo instalar as testadas, pois algumas GSIs não estão funcionando)
- Baixe o [Android 15 GSI Fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/Android-15-GSI-Fix.zip)

### Instalação no TWRP

- Faça backup (boot e vendor)
- Instale o Kernel
- Instale o Permissiver
- Instale a GSI
- Instale o Android 15 Fix (isso irá modificar o vendor do seu dispositivo)
- Formate data
- Reinicie para o Sistema (Talvez na primeira inicialização o dispositivo reinicie. Espere reiniciar, que irá iniciar normalmente.)

## Modulos recomendados 
- Lag Fix: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/Fix%20GSI%20Lags%20V1.0.zip)
  - Corrige pequenos lags ao scrollar.
- Fix StatusBar Padding, AOD and Round Corners: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/Fix%20StatusBar%20Padding,%20AOD%20and%20Round%20Corners%20V2.0.zip)
  - Corrige os ícones de hora e bateria fora da tela.

## Correção do Brilho: 
Phh Treble Settings ->
Samsung features ->
- Defina para 0: backlight scale/max backlight level
- Ative: Enable extended brightness range

Volte para Phh Treble Settings ->
Misc Features ->
- Ative: Set alternative brightness curve
