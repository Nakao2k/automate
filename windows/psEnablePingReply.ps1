# ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In | Set-NetFirewallRule -enabled true;

# ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP6-ERQ-In | Set-NetFirewallRule -enabled true;

# ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : ドメイン )
Get-NetFirewallRule -name  FPS-ICMP4-ERQ-In-NoScope | Set-NetFirewallRule -enable true

# ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : ドメイン )
Get-NetFirewallRule -name  FPS-ICMP6-ERQ-In-NoScope | Set-NetFirewallRule -enable true

