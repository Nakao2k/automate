
set dir_win10=C:\custom_iso\OS_Windows10_Pro_22H2
set dir_win11=C:\custom_iso\OS_Windows11_Pro_23H2
set dir_win2022=C:\custom_iso\OS_WindowsServer_2022_trial

copy autounattend_win10pro_jp.xml %dir_win10%\autounattend.xml
copy autounattend_win11pro_jp.xml %dir_win11%\autounattend.xml

copy autounattend_win2022std_jp.xml %dir_win2022%\autounattend.xml

pause

