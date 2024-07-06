#/bin/bash

# ����/�o�̓t�@�C�����`
win10pro=autounattend_win10pro_jp.xml
win11pro=autounattend_win11pro_jp.xml

win10any=autounattend_win10_jp.xml
win11any=autounattend_win11_jp.xml


# win10 pro�̃t�@�C�����R�s�[����win11 pro�쐬
cp $win10pro $win11pro

# Windows 10 pro��Windows 11 pro�ɕύX
sed -i -r "s/(<Value>)Windows 10 Pro(<\/Value>)/\1Windows 11 Pro\2/" $win11pro


# win10 pro�̃t�@�C�����R�s�[����win10 any�쐬
cp $win10pro $win10any

# �R�����g�A�E�g�J�n
sed -i -r "s/( *)(<InstallFrom>)/\1<\!--\r\n\1\2/" $win10any

# �R�����g�A�E�g�I��
sed -i -r "s/( *)(<\/InstallFrom>)/\1\2\r\n\1-->/" $win10any


# win11 pro�̃t�@�C�����R�s�[����win11 any�쐬
cp $win11pro $win11any

# �R�����g�A�E�g�J�n
sed -i -r "s/( *)(<InstallFrom>)/\1<\!--\r\n\1\2/" $win11any

# �R�����g�A�E�g�I��
sed -i -r "s/( *)(<\/InstallFrom>)/\1\2\r\n\1-->/" $win11any


