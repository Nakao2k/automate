
# リモートデスクトップ接続を有効化
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name  "fDenyTSConnections" -Value "0"

# リモートデスクトップでネットワークレベル認証設定を有効化
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name "UserAuthentication" -Value 1

# リモートデスクトップのFirewallを疎通設定
Get-NetFirewallRule | Where-Object { $_.Name -like "RemoteDesktop*" -and $_.Name -notlike "*ws*" } | Set-NetFirewallRule -Enabled true

# ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In | Set-NetFirewallRule -Enabled true;

# ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP6-ERQ-In | Set-NetFirewallRule -Enabled true;

# ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : ドメイン )
Get-NetFirewallRule -name  FPS-ICMP4-ERQ-In-NoScope | Set-NetFirewallRule -Enable true

# ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : ドメイン )
Get-NetFirewallRule -name  FPS-ICMP6-ERQ-In-NoScope | Set-NetFirewallRule -Enable true

