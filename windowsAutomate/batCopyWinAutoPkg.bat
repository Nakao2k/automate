@echo off

:: Windows 10 Pro �̃J�X�^��ISO�f�B���N�g���̃p�X��ݒ�
set dir_win10=C:\custom_iso\OS_Windows10_Pro_22H2

:: Windows 11 Pro �̃J�X�^��ISO�f�B���N�g���̃p�X��ݒ�
set dir_win11=C:\custom_iso\OS_Windows11_Pro_23H2

:: Windows Imaging and Configuration Designer (WICD) �̃f�B���N�g���p�X��ݒ�
set dir_wicd=%USERPROFILE%\Documents\Windows Imaging and Configuration Designer (WICD)

:: �R�s�[����v���r�W���j���O�p�b�P�[�W (ppkg) �̃t�@�C������ݒ�
set file_pkg=Win10_AutoInstall

@echo on

:: WICD �f�B���N�g�����猻�݂̃f�B���N�g���Ƀv���r�W���j���O�p�b�P�[�W���R�s�[
copy "%dir_wicd%\%file_pkg%\%file_pkg%.ppkg" .

:: �R�s�[�����v���r�W���j���O�p�b�P�[�W�� Windows 10 �̃J�X�^��ISO�f�B���N�g���ɃR�s�[
copy %file_pkg%.ppkg %dir_win10%

:: �R�s�[�����v���r�W���j���O�p�b�P�[�W�� Windows 11 �̃J�X�^��ISO�f�B���N�g���ɃR�s�[
copy %file_pkg%.ppkg %dir_win11%

:: �������I���������Ƃ��m�F���邽�߁A�ꎞ��~
pause
