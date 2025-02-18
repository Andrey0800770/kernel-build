# Android 15 no Galaxy S9+/S9 Snapdragon
### Aviso: O Android 15 está na sua fase inicial de desenvolvimento, portanto todas as GSIs atualmente têm algum problema. Não instale achando que tudo estará funcionando ou que qualquer GSI funcionará perfeitamente.

## GSIs Testadas:

### EvolutionX 10.3

https://github.com/mytja/treble_evo/releases
- Para corrigir o Samsung Features não aparecendo no PHH Settings, instale este módulo no KSU: [Download](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/TrebleGSIProps_1.1.zip)


### AOSP Treble

https://github.com/TrebleDroid/treble_experimentations/releases
- Antes de instalar: baixe o [Google Webview](https://www.apkmirror.com/apk/google-inc/android-system-webview/android-system-webview-132-0-6834-165-release/android-system-webview-132-0-6834-165-android-apk-download/)
e baixe algum Navegador, porque o sistema vem sem nenhum. Instale os apks quando iniciar a GSI.

## Como instalar
### Baixe:

- Baixe o Kernel: [Download](https://github.com/Andrey0800770/samsung_sdm845-kernel/releases)
- Baixe o [Permissiver](https://sourceforge.net/projects/sgsi137/files/Permissiver%20v5.zip/download)
- Baixe a GSI (Recomendo instalar as testadas, pois algumas GSIs não estão funcionando)
- Baixe o Android 15 Fix
  - [Para o S9+](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/Android-15-Fix.zip)
  - [Para o S9](https://github.com/Andrey0800770/kernel-build/raw/refs/heads/main/Android-15-Fix-S9.zip)

### Instalação no TWRP

- Faça backup (boot e vendor)
- Instale o Kernel
- Instale o Permissiver
- Instale a GSI
- Instale o Android 15 Fix (isso irá modificar o vendor do seu dispositivo)
- Formate os dados
- Reinicie para o Sistema (Talvez na primeira inicialização o dispositivo reinicie. Espere reiniciar, que irá iniciar normalmente.)
