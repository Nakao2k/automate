
set dir_win10=C:\custom_iso\OS_Windows10_Pro_22H2
set dir_win11=C:\custom_iso\OS_Windows11_Pro_23H2

set dir_wicd=%USERPROFILE%\Documents\Windows Imaging and Configuration Designer (WICD)
set file_pkg=Win10_AutoInstall

copy "%dir_wicd%\%file_pkg%\%file_pkg%.ppkg" .
copy %file_pkg%.ppkg %dir_win10%
copy %file_pkg%.ppkg %dir_win11%

pause


