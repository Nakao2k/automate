@echo off

:: Windows 10 Pro �̃J�X�^��ISO�f�B���N�g���̃p�X��ݒ�
set dir_win10=C:\custom_iso\OS_Windows10_Pro_22H2

:: Windows 11 Pro �̃J�X�^��ISO�f�B���N�g���̃p�X��ݒ�
set dir_win11=C:\custom_iso\OS_Windows11_Pro_23H2

:: Windows Server 2022 �̃J�X�^��ISO�f�B���N�g���̃p�X��ݒ�
set dir_win2022=C:\custom_iso\OS_WindowsServer_2022_trial

@echo on

:: Windows 10 Pro �p�̎��������t�@�C�����w��f�B���N�g���ɃR�s�[
copy autounattend_win10pro_jp.xml %dir_win10%\autounattend.xml

:: Windows 11 Pro �p�̎��������t�@�C�����w��f�B���N�g���ɃR�s�[
copy autounattend_win11pro_jp.xml %dir_win11%\autounattend.xml

:: Windows Server 2022 �p�̎��������t�@�C�����w��f�B���N�g���ɃR�s�[
copy autounattend_win2022std_jp_RdpWinrm.xml %dir_win2022%\autounattend.xml

:: �������I���������Ƃ��m�F���邽�߁A�ꎞ��~
pause

