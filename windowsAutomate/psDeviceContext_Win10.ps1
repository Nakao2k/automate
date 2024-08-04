
# OS�C���X�g�[�����̃v���C�o�V�[�ݒ���΂�
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\OOBE /v DisablePrivacyExperience /t REG_DWORD /d 1

# �����[�g�f�X�N�g�b�v�ڑ���L����
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name  "fDenyTSConnections" -Value "0"

# �����[�g�f�X�N�g�b�v�Ńl�b�g���[�N���x���F�ؐݒ��L����
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name "UserAuthentication" -Value 1

# Firewall���F�����[�g�f�X�N�g�b�v(RDP)������
Get-NetFirewallRule | Where-Object { $_.Name -like "RemoteDesktop*" -and $_.Name -notlike "*ws*" } | Set-NetFirewallRule -Enabled true

# Firewall���F�t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv4 ��M) ( Profile : �v���C�x�[�g )
Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In | Set-NetFirewallRule -Enabled true;

# Firewall���F�t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv6 ��M) ( Profile : �v���C�x�[�g )
Get-NetFirewallRule -Name FPS-ICMP6-ERQ-In | Set-NetFirewallRule -Enabled true;

# Firewall���F�t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv4 ��M) ( Profile : �h���C�� )
Get-NetFirewallRule -Name  FPS-ICMP4-ERQ-In-NoScope | Set-NetFirewallRule -Enable true

# Firewall���F�t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv6 ��M) ( Profile : �h���C�� )
Get-NetFirewallRule -Name  FPS-ICMP6-ERQ-In-NoScope | Set-NetFirewallRule -Enable true



