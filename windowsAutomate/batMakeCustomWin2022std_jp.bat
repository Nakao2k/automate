:: ��ƃf�B���N�g��
cd OS_WindowsServer_2022_trial

:: �쐬���� ISO �t�@�C����
set ISOFile=..\OS_CUSTOM_WindowsServer_2022_trial_std.iso

:: ISO �ɂ���t�H���_
set ISOBase=.

:: �A�[�L�e�N�`��
set Architecture=amd64

:: �N���t�@�C��
set ISO_etfsboot=boot\etfsboot.com
set ISO_efisys=efi/microsoft/boot/efisys.bin

:: ISO �쐬
set ISOCommand="C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\%Architecture%\Oscdimg\oscdimg.exe" -lWin2022std -m -o -u2 -udfver102 -bootdata:2#p0,e,b%ISO_etfsboot%#pEF,e,b%ISO_efisys% . %ISOFile%

%ISOCommand%

pause
