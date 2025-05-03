# Android 15 no Galaxy S9+/S9/N9 Snapdragon
### Aviso: O Android 15 está na sua fase inicial de desenvolvimento, portanto todas as GSIs atualmente têm algum problema. Não instale achando que tudo estará funcionando ou que qualquer GSI funcionará perfeitamente.

## GSIs Testadas:




### LineageOS 22.1
- [LineageOS Releases](https://github.com/MisterZtr/LineageOS_gsi/releases)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona

### VoltageOS 4.2
- [VoltageOS Releases](https://github.com/cawilliamson/treble_voltage/releases/)

### EvolutionX 10.3

- [EvolutionX 10.3 Releases](https://github.com/mytja/treble_evo/releases)
- 10.3.1 precisa de: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip) e a tela de bloqueio não funciona.
- Para corrigir o Samsung Features não aparecendo no PHH Settings, instale este módulo no KSU: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/TrebleGSIProps_1.1.zip)

### 2by2 Project
- [2by2 Releases](https://github.com/MisterZtr/2by2_gsi/releases)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona

### BreezeOS
- [BreezeOS Releases](https://t.me/CottonCloudFiles)
- Antes de iniciar instale no TWRP: [bootloop-fix](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/files/bootloop-fix.zip)
- Tela de bloqueio não funciona

### AOSP Treble
- [AOSP Treble Releases](https://github.com/TrebleDroid/treble_experimentations/releases)
- Antes de instalar: baixe o [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-android-apk-download/)
e baixe algum Navegador, porque o sistema vem sem nenhum. Instale os apks quando iniciar a GSI.

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
