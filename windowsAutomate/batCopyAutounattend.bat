@echo off

:: Windows 10 Pro のカスタムISOディレクトリのパスを設定
set dir_win10=C:\custom_iso\OS_Windows10_Pro_22H2

:: Windows 11 Pro のカスタムISOディレクトリのパスを設定
set dir_win11=C:\custom_iso\OS_Windows11_Pro_23H2

:: Windows Server 2022 のカスタムISOディレクトリのパスを設定
set dir_win2022=C:\custom_iso\OS_WindowsServer_2022_trial

@echo on

:: Windows 10 Pro 用の自動応答ファイルを指定ディレクトリにコピー
copy autounattend_win10pro_jp.xml %dir_win10%\autounattend.xml

:: Windows 11 Pro 用の自動応答ファイルを指定ディレクトリにコピー
copy autounattend_win11pro_jp.xml %dir_win11%\autounattend.xml

:: Windows Server 2022 用の自動応答ファイルを指定ディレクトリにコピー
copy autounattend_win2022std_jp_RdpWinrm.xml %dir_win2022%\autounattend.xml

:: 処理が終了したことを確認するため、一時停止
pause

