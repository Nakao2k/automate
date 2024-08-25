@echo off

:: ��ƃf�B���N�g���Ɉړ� (OS_WindowsServer_2022_trial �t�H���_)
cd OS_WindowsServer_2022_trial

:: �쐬���� ISO �t�@�C���̖��O��ݒ�
set ISOFile=..\OS_CUSTOM_WindowsServer_2022_trial_std.iso

:: ISO �ɂ���t�H���_ (�J�����g�f�B���N�g��) ��ݒ�
set ISOBase=.

:: oscdimg.exe �̃p�X��ݒ� (Windows ADK �̃c�[�����g�p)
set ISO_exe="%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\%PROCESSOR_ARCHITECTURE%\Oscdimg\oscdimg.exe"

:: ISO �̃u�[�g�Z�N�^�[�p�̃t�@�C����ݒ�
set ISO_etfsboot=boot\etfsboot.com

:: UEFI �u�[�g�p�̃t�@�C����ݒ�
set ISO_efisys=efi/microsoft/boot/efisys.bin

:: ISO �쐬�R�}���h��ݒ� (oscdimg.exe ���g�p���� ISO �C���[�W���쐬)
set ISOCommand=%ISO_exe% -lWin2022std -m -o -u2 -udfver102 -bootdata:2#p0,e,b%ISO_etfsboot%#pEF,e,b%ISO_efisys% . %ISOFile%

@echo on

:: �ݒ肳�ꂽ�R�}���h�����s���� ISO �t�@�C�����쐬
%ISOCommand%

:: �������I���������Ƃ��m�F���邽�߁A�ꎞ��~
pause
