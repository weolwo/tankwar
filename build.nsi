; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "tank"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "me Inc."
!define PRODUCT_WEB_SITE "http://me.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\tank.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "tank\tank.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "license.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\tank.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "tank.exe"
InstallDir "$PROGRAMFILES\tank"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR\app"
  SetOverwrite try
  File "tank\app\.jpackage.xml"
  File "tank\app\tank.cfg"
  SetOutPath "$INSTDIR\runtime\bin"
  File "tank\runtime\bin\api-ms-win-core-console-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-console-l1-2-0.dll"
  File "tank\runtime\bin\api-ms-win-core-datetime-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-debug-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-file-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-file-l1-2-0.dll"
  File "tank\runtime\bin\api-ms-win-core-file-l2-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-handle-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-heap-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-interlocked-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-localization-l1-2-0.dll"
  File "tank\runtime\bin\api-ms-win-core-memory-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-processthreads-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-processthreads-l1-1-1.dll"
  File "tank\runtime\bin\api-ms-win-core-profile-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-string-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-synch-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-synch-l1-2-0.dll"
  File "tank\runtime\bin\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-timezone-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-core-util-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-conio-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-convert-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-environment-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-heap-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-locale-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-math-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-private-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-process-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-runtime-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-stdio-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-string-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-time-l1-1-0.dll"
  File "tank\runtime\bin\api-ms-win-crt-utility-l1-1-0.dll"
  File "tank\runtime\bin\awt.dll"
  File "tank\runtime\bin\fontmanager.dll"
  File "tank\runtime\bin\freetype.dll"
  File "tank\runtime\bin\java.dll"
  File "tank\runtime\bin\javajpeg.dll"
  File "tank\runtime\bin\jawt.dll"
  File "tank\runtime\bin\jimage.dll"
  File "tank\runtime\bin\jli.dll"
  File "tank\runtime\bin\jsound.dll"
  File "tank\runtime\bin\lcms.dll"
  File "tank\runtime\bin\mlib_image.dll"
  File "tank\runtime\bin\msvcp140.dll"
  File "tank\runtime\bin\net.dll"
  File "tank\runtime\bin\nio.dll"
  File "tank\runtime\bin\prefs.dll"
  SetOutPath "$INSTDIR\runtime\bin\server"
  File "tank\runtime\bin\server\jvm.dll"
  SetOutPath "$INSTDIR\runtime\bin"
  File "tank\runtime\bin\splashscreen.dll"
  File "tank\runtime\bin\ucrtbase.dll"
  File "tank\runtime\bin\vcruntime140.dll"
  File "tank\runtime\bin\vcruntime140_1.dll"
  File "tank\runtime\bin\verify.dll"
  File "tank\runtime\bin\zip.dll"
  SetOutPath "$INSTDIR\runtime\conf"
  File "tank\runtime\conf\net.properties"
  SetOutPath "$INSTDIR\runtime\conf\security"
  File "tank\runtime\conf\security\java.policy"
  File "tank\runtime\conf\security\java.security"
  SetOutPath "$INSTDIR\runtime\conf\security\policy\limited"
  File "tank\runtime\conf\security\policy\limited\default_local.policy"
  File "tank\runtime\conf\security\policy\limited\default_US_export.policy"
  File "tank\runtime\conf\security\policy\limited\exempt_local.policy"
  SetOutPath "$INSTDIR\runtime\conf\security\policy"
  File "tank\runtime\conf\security\policy\README.txt"
  SetOutPath "$INSTDIR\runtime\conf\security\policy\unlimited"
  File "tank\runtime\conf\security\policy\unlimited\default_local.policy"
  File "tank\runtime\conf\security\policy\unlimited\default_US_export.policy"
  SetOutPath "$INSTDIR\runtime\conf"
  File "tank\runtime\conf\sound.properties"
  SetOutPath "$INSTDIR\runtime\legal\java.base"
  File "tank\runtime\legal\java.base\aes.md"
  File "tank\runtime\legal\java.base\asm.md"
  File "tank\runtime\legal\java.base\c-libutl.md"
  File "tank\runtime\legal\java.base\cldr.md"
  File "tank\runtime\legal\java.base\COPYRIGHT"
  File "tank\runtime\legal\java.base\icu.md"
  File "tank\runtime\legal\java.base\LICENSE"
  File "tank\runtime\legal\java.base\public_suffix.md"
  File "tank\runtime\legal\java.base\unicode.md"
  File "tank\runtime\legal\java.base\wepoll.md"
  File "tank\runtime\legal\java.base\zlib.md"
  SetOutPath "$INSTDIR\runtime\legal\java.datatransfer"
  File "tank\runtime\legal\java.datatransfer\COPYRIGHT"
  File "tank\runtime\legal\java.datatransfer\LICENSE"
  SetOutPath "$INSTDIR\runtime\legal\java.desktop"
  File "tank\runtime\legal\java.desktop\colorimaging.md"
  File "tank\runtime\legal\java.desktop\COPYRIGHT"
  File "tank\runtime\legal\java.desktop\freetype.md"
  File "tank\runtime\legal\java.desktop\giflib.md"
  File "tank\runtime\legal\java.desktop\harfbuzz.md"
  File "tank\runtime\legal\java.desktop\jpeg.md"
  File "tank\runtime\legal\java.desktop\lcms.md"
  File "tank\runtime\legal\java.desktop\libpng.md"
  File "tank\runtime\legal\java.desktop\LICENSE"
  File "tank\runtime\legal\java.desktop\mesa3d.md"
  SetOutPath "$INSTDIR\runtime\legal\java.prefs"
  File "tank\runtime\legal\java.prefs\COPYRIGHT"
  File "tank\runtime\legal\java.prefs\LICENSE"
  SetOutPath "$INSTDIR\runtime\legal\java.scripting"
  File "tank\runtime\legal\java.scripting\COPYRIGHT"
  File "tank\runtime\legal\java.scripting\LICENSE"
  SetOutPath "$INSTDIR\runtime\legal\java.xml"
  File "tank\runtime\legal\java.xml\bcel.md"
  File "tank\runtime\legal\java.xml\COPYRIGHT"
  File "tank\runtime\legal\java.xml\dom.md"
  File "tank\runtime\legal\java.xml\jcup.md"
  File "tank\runtime\legal\java.xml\LICENSE"
  File "tank\runtime\legal\java.xml\xalan.md"
  File "tank\runtime\legal\java.xml\xerces.md"
  SetOutPath "$INSTDIR\runtime\legal\jdk.unsupported"
  File "tank\runtime\legal\jdk.unsupported\COPYRIGHT"
  File "tank\runtime\legal\jdk.unsupported\LICENSE"
  SetOutPath "$INSTDIR\runtime\lib"
  File "tank\runtime\lib\classlist"
  File "tank\runtime\lib\fontconfig.bfc"
  File "tank\runtime\lib\fontconfig.properties.src"
  File "tank\runtime\lib\jawt.lib"
  File "tank\runtime\lib\jrt-fs.jar"
  File "tank\runtime\lib\jvm.cfg"
  File "tank\runtime\lib\jvm.lib"
  File "tank\runtime\lib\modules"
  File "tank\runtime\lib\psfont.properties.ja"
  File "tank\runtime\lib\psfontj2d.properties"
  SetOutPath "$INSTDIR\runtime\lib\security"
  File "tank\runtime\lib\security\blocked.certs"
  File "tank\runtime\lib\security\cacerts"
  File "tank\runtime\lib\security\default.policy"
  File "tank\runtime\lib\security\public_suffix_list.dat"
  SetOutPath "$INSTDIR\runtime\lib"
  File "tank\runtime\lib\tzdb.dat"
  File "tank\runtime\lib\tzmappings"
  SetOutPath "$INSTDIR\runtime"
  File "tank\runtime\release"
  SetOutPath "$INSTDIR"
  File "tank\tank.exe"
  CreateDirectory "$SMPROGRAMS\tank"
  CreateShortCut "$SMPROGRAMS\tank\tank.lnk" "$INSTDIR\tank.exe"
  CreateShortCut "$DESKTOP\tank.lnk" "$INSTDIR\tank.exe"
  File "tank\tank.ico"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\tank\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\tank\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\tank.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\tank.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除 $(^Name) ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\tank.ico"
  Delete "$INSTDIR\tank.exe"
  Delete "$INSTDIR\runtime\release"
  Delete "$INSTDIR\runtime\lib\tzmappings"
  Delete "$INSTDIR\runtime\lib\tzdb.dat"
  Delete "$INSTDIR\runtime\lib\security\public_suffix_list.dat"
  Delete "$INSTDIR\runtime\lib\security\default.policy"
  Delete "$INSTDIR\runtime\lib\security\cacerts"
  Delete "$INSTDIR\runtime\lib\security\blocked.certs"
  Delete "$INSTDIR\runtime\lib\psfontj2d.properties"
  Delete "$INSTDIR\runtime\lib\psfont.properties.ja"
  Delete "$INSTDIR\runtime\lib\modules"
  Delete "$INSTDIR\runtime\lib\jvm.lib"
  Delete "$INSTDIR\runtime\lib\jvm.cfg"
  Delete "$INSTDIR\runtime\lib\jrt-fs.jar"
  Delete "$INSTDIR\runtime\lib\jawt.lib"
  Delete "$INSTDIR\runtime\lib\fontconfig.properties.src"
  Delete "$INSTDIR\runtime\lib\fontconfig.bfc"
  Delete "$INSTDIR\runtime\lib\classlist"
  Delete "$INSTDIR\runtime\legal\jdk.unsupported\LICENSE"
  Delete "$INSTDIR\runtime\legal\jdk.unsupported\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.xml\xerces.md"
  Delete "$INSTDIR\runtime\legal\java.xml\xalan.md"
  Delete "$INSTDIR\runtime\legal\java.xml\LICENSE"
  Delete "$INSTDIR\runtime\legal\java.xml\jcup.md"
  Delete "$INSTDIR\runtime\legal\java.xml\dom.md"
  Delete "$INSTDIR\runtime\legal\java.xml\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.xml\bcel.md"
  Delete "$INSTDIR\runtime\legal\java.scripting\LICENSE"
  Delete "$INSTDIR\runtime\legal\java.scripting\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.prefs\LICENSE"
  Delete "$INSTDIR\runtime\legal\java.prefs\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.desktop\mesa3d.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\LICENSE"
  Delete "$INSTDIR\runtime\legal\java.desktop\libpng.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\lcms.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\jpeg.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\harfbuzz.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\giflib.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\freetype.md"
  Delete "$INSTDIR\runtime\legal\java.desktop\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.desktop\colorimaging.md"
  Delete "$INSTDIR\runtime\legal\java.datatransfer\LICENSE"
  Delete "$INSTDIR\runtime\legal\java.datatransfer\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.base\zlib.md"
  Delete "$INSTDIR\runtime\legal\java.base\wepoll.md"
  Delete "$INSTDIR\runtime\legal\java.base\unicode.md"
  Delete "$INSTDIR\runtime\legal\java.base\public_suffix.md"
  Delete "$INSTDIR\runtime\legal\java.base\LICENSE"
  Delete "$INSTDIR\runtime\legal\java.base\icu.md"
  Delete "$INSTDIR\runtime\legal\java.base\COPYRIGHT"
  Delete "$INSTDIR\runtime\legal\java.base\cldr.md"
  Delete "$INSTDIR\runtime\legal\java.base\c-libutl.md"
  Delete "$INSTDIR\runtime\legal\java.base\asm.md"
  Delete "$INSTDIR\runtime\legal\java.base\aes.md"
  Delete "$INSTDIR\runtime\conf\sound.properties"
  Delete "$INSTDIR\runtime\conf\security\policy\unlimited\default_US_export.policy"
  Delete "$INSTDIR\runtime\conf\security\policy\unlimited\default_local.policy"
  Delete "$INSTDIR\runtime\conf\security\policy\README.txt"
  Delete "$INSTDIR\runtime\conf\security\policy\limited\exempt_local.policy"
  Delete "$INSTDIR\runtime\conf\security\policy\limited\default_US_export.policy"
  Delete "$INSTDIR\runtime\conf\security\policy\limited\default_local.policy"
  Delete "$INSTDIR\runtime\conf\security\java.security"
  Delete "$INSTDIR\runtime\conf\security\java.policy"
  Delete "$INSTDIR\runtime\conf\net.properties"
  Delete "$INSTDIR\runtime\bin\zip.dll"
  Delete "$INSTDIR\runtime\bin\verify.dll"
  Delete "$INSTDIR\runtime\bin\vcruntime140_1.dll"
  Delete "$INSTDIR\runtime\bin\vcruntime140.dll"
  Delete "$INSTDIR\runtime\bin\ucrtbase.dll"
  Delete "$INSTDIR\runtime\bin\splashscreen.dll"
  Delete "$INSTDIR\runtime\bin\server\jvm.dll"
  Delete "$INSTDIR\runtime\bin\prefs.dll"
  Delete "$INSTDIR\runtime\bin\nio.dll"
  Delete "$INSTDIR\runtime\bin\net.dll"
  Delete "$INSTDIR\runtime\bin\msvcp140.dll"
  Delete "$INSTDIR\runtime\bin\mlib_image.dll"
  Delete "$INSTDIR\runtime\bin\lcms.dll"
  Delete "$INSTDIR\runtime\bin\jsound.dll"
  Delete "$INSTDIR\runtime\bin\jli.dll"
  Delete "$INSTDIR\runtime\bin\jimage.dll"
  Delete "$INSTDIR\runtime\bin\jawt.dll"
  Delete "$INSTDIR\runtime\bin\javajpeg.dll"
  Delete "$INSTDIR\runtime\bin\java.dll"
  Delete "$INSTDIR\runtime\bin\freetype.dll"
  Delete "$INSTDIR\runtime\bin\fontmanager.dll"
  Delete "$INSTDIR\runtime\bin\awt.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-utility-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-time-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-string-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-stdio-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-runtime-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-process-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-private-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-multibyte-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-math-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-locale-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-heap-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-filesystem-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-environment-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-convert-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-crt-conio-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-util-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-timezone-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-sysinfo-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-synch-l1-2-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-synch-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-string-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-rtlsupport-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-profile-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-processthreads-l1-1-1.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-processthreads-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-processenvironment-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-namedpipe-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-memory-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-localization-l1-2-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-libraryloader-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-interlocked-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-heap-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-handle-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-file-l2-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-file-l1-2-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-file-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-errorhandling-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-debug-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-datetime-l1-1-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-console-l1-2-0.dll"
  Delete "$INSTDIR\runtime\bin\api-ms-win-core-console-l1-1-0.dll"
  Delete "$INSTDIR\app\tank.cfg"
  Delete "$INSTDIR\app\.jpackage.xml"

  Delete "$SMPROGRAMS\tank\Uninstall.lnk"
  Delete "$SMPROGRAMS\tank\Website.lnk"
  Delete "$DESKTOP\tank.lnk"
  Delete "$SMPROGRAMS\tank\tank.lnk"

  RMDir "$SMPROGRAMS\tank"
  RMDir "$INSTDIR\runtime\lib\security"
  RMDir "$INSTDIR\runtime\lib"
  RMDir "$INSTDIR\runtime\legal\jdk.unsupported"
  RMDir "$INSTDIR\runtime\legal\java.xml"
  RMDir "$INSTDIR\runtime\legal\java.scripting"
  RMDir "$INSTDIR\runtime\legal\java.prefs"
  RMDir "$INSTDIR\runtime\legal\java.desktop"
  RMDir "$INSTDIR\runtime\legal\java.datatransfer"
  RMDir "$INSTDIR\runtime\legal\java.base"
  RMDir "$INSTDIR\runtime\conf\security\policy\unlimited"
  RMDir "$INSTDIR\runtime\conf\security\policy\limited"
  RMDir "$INSTDIR\runtime\conf\security\policy"
  RMDir "$INSTDIR\runtime\conf\security"
  RMDir "$INSTDIR\runtime\conf"
  RMDir "$INSTDIR\runtime\bin\server"
  RMDir "$INSTDIR\runtime\bin"
  RMDir "$INSTDIR\runtime"
  RMDir "$INSTDIR\app"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd