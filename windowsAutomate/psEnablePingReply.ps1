# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In | Set-NetFirewallRule -Enabled true;

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP6-ERQ-In | Set-NetFirewallRule -Enabled true;

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : ドメイン )
Get-NetFirewallRule -Name  FPS-ICMP4-ERQ-In-NoScope | Set-NetFirewallRule -Enable true

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : ドメイン )
Get-NetFirewallRule -Name  FPS-ICMP6-ERQ-In-NoScope | Set-NetFirewallRule -Enable true

