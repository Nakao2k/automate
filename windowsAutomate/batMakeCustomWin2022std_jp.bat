@echo off

:: 作業ディレクトリに移動 (OS_WindowsServer_2022_trial フォルダ)
cd OS_WindowsServer_2022_trial

:: 作成する ISO ファイルの名前を設定
set ISOFile=..\OS_CUSTOM_WindowsServer_2022_trial_std.iso

:: ISO にするフォルダ (カレントディレクトリ) を設定
set ISOBase=.

:: oscdimg.exe のパスを設定 (Windows ADK のツールを使用)
set ISO_exe="%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\%PROCESSOR_ARCHITECTURE%\Oscdimg\oscdimg.exe"

:: ISO のブートセクター用のファイルを設定
set ISO_etfsboot=boot\etfsboot.com

:: UEFI ブート用のファイルを設定
set ISO_efisys=efi/microsoft/boot/efisys.bin

:: ISO 作成コマンドを設定 (oscdimg.exe を使用して ISO イメージを作成)
set ISOCommand=%ISO_exe% -lWin2022std -m -o -u2 -udfver102 -bootdata:2#p0,e,b%ISO_etfsboot%#pEF,e,b%ISO_efisys% . %ISOFile%

@echo on

:: 設定されたコマンドを実行して ISO ファイルを作成
%ISOCommand%

:: 処理が終了したことを確認するため、一時停止
pause
