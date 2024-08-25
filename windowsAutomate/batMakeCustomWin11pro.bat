@echo off

:: 作業ディレクトリに移動 (OS_Windows11_Pro_23H2 フォルダ)
cd OS_Windows11_Pro_23H2

:: 作成する ISO ファイルの名前を設定
set ISOFile=..\OS_CUSTOM_Windows11_Pro_23H2.iso

:: ISO にするフォルダ (カレントディレクトリ) を設定
set ISOBase=.

:: oscdimg.exe のパスを設定 (Windows ADK のツールを使用)
set ISO_exe="%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\%PROCESSOR_ARCHITECTURE%\Oscdimg\oscdimg.exe"

:: ISO のブートセクター用のファイルを設定
set ISO_etfsboot=boot\etfsboot.com

:: UEFI ブート用のファイルを設定
set ISO_efisys=efi/microsoft/boot/efisys.bin

:: ISO 作成コマンドを設定 (oscdimg.exe を使用して ISO イメージを作成)
set ISOCommand=%ISO_exe% -lWin11Pro23H2 -m -o -u2 -udfver102 -bootdata:2#p0,e,b%ISO_etfsboot%#pEF,e,b%ISO_efisys% . %ISOFile%

@echo on

:: 設定されたコマンドを実行して ISO ファイルを作成
%ISOCommand%

:: 処理が終了したことを確認するため、一時停止
pause
