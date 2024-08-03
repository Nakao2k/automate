:: 作業ディレクトリ
cd OS_Windows11_Pro_23H2

:: 作成する ISO ファイル名
set ISOFile=..\OS_CUSTOM_Windows11_Pro_23H2.iso

:: ISO にするフォルダ
set ISOBase=.

:: 起動ファイル
set ISO_exe="%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\%PROCESSOR_ARCHITECTURE%\Oscdimg\oscdimg.exe"
set ISO_etfsboot=boot\etfsboot.com
set ISO_efisys=efi/microsoft/boot/efisys.bin

:: ISO 作成
set ISOCommand=%ISO_exe% -lWin11Pro23H2 -m -o -u2 -udfver102 -bootdata:2#p0,e,b%ISO_etfsboot%#pEF,e,b%ISO_efisys% . %ISOFile%

%ISOCommand%

pause
