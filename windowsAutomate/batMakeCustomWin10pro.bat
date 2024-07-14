:: 作業ディレクトリ
cd OS_Windows10_Pro_22H2

:: 作成する ISO ファイル名
set ISOFile=..\OS_CUSTOM_Windows10_Pro_22H2.iso

:: ISO にするフォルダ
set ISOBase=.

:: アーキテクチャ
set Architecture=amd64

:: 起動ファイル
set ISO_etfsboot=boot\etfsboot.com
set ISO_efisys=efi/microsoft/boot/efisys.bin

:: ISO 作成
set ISOCommand="C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\%Architecture%\Oscdimg\oscdimg.exe" -lWin10Pro22H2 -m -o -u2 -udfver102 -bootdata:2#p0,e,b%ISO_etfsboot%#pEF,e,b%ISO_efisys% . %ISOFile%

%ISOCommand%

pause
