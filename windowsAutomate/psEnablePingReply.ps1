# �t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv4 ��M) ( Profile : �v���C�x�[�g )
Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In | Set-NetFirewallRule -enabled true;

# �t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv6 ��M) ( Profile : �v���C�x�[�g )
Get-NetFirewallRule -Name FPS-ICMP6-ERQ-In | Set-NetFirewallRule -enabled true;

# �t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv4 ��M) ( Profile : �h���C�� )
Get-NetFirewallRule -name  FPS-ICMP4-ERQ-In-NoScope | Set-NetFirewallRule -enable true

# �t�@�C���ƃv�����^�[�̋��L (�G�R�[�v�� - ICMPv6 ��M) ( Profile : �h���C�� )
Get-NetFirewallRule -name  FPS-ICMP6-ERQ-In-NoScope | Set-NetFirewallRule -enable true

