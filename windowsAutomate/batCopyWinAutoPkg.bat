@echo off

:: Windows 10 Pro のカスタムISOディレクトリのパスを設定
set dir_win10=C:\custom_iso\OS_Windows10_Pro_22H2

:: Windows 11 Pro のカスタムISOディレクトリのパスを設定
set dir_win11=C:\custom_iso\OS_Windows11_Pro_23H2

:: Windows Imaging and Configuration Designer (WICD) のディレクトリパスを設定
set dir_wicd=%USERPROFILE%\Documents\Windows Imaging and Configuration Designer (WICD)

:: コピーするプロビジョニングパッケージ (ppkg) のファイル名を設定
set file_pkg=Win10_AutoInstall

@echo on

:: WICD ディレクトリから現在のディレクトリにプロビジョニングパッケージをコピー
copy "%dir_wicd%\%file_pkg%\%file_pkg%.ppkg" .

:: コピーしたプロビジョニングパッケージを Windows 10 のカスタムISOディレクトリにコピー
copy %file_pkg%.ppkg %dir_win10%

:: コピーしたプロビジョニングパッケージを Windows 11 のカスタムISOディレクトリにコピー
copy %file_pkg%.ppkg %dir_win11%

:: 処理が終了したことを確認するため、一時停止
pause
