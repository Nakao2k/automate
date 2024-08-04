
# OSインストール時のプライバシー設定を飛ばす
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\OOBE /v DisablePrivacyExperience /t REG_DWORD /d 1

# リモートデスクトップ接続を有効化
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name  "fDenyTSConnections" -Value "0"

# リモートデスクトップでネットワークレベル認証設定を有効化
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name "UserAuthentication" -Value 1

# Firewall許可：リモートデスクトップ(RDP)を許可
Get-NetFirewallRule | Where-Object { $_.Name -like "RemoteDesktop*" -and $_.Name -notlike "*ws*" } | Set-NetFirewallRule -Enabled true

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In | Set-NetFirewallRule -Enabled true;

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : プライベート )
Get-NetFirewallRule -Name FPS-ICMP6-ERQ-In | Set-NetFirewallRule -Enabled true;

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv4 受信) ( Profile : ドメイン )
Get-NetFirewallRule -Name  FPS-ICMP4-ERQ-In-NoScope | Set-NetFirewallRule -Enable true

# Firewall許可：ファイルとプリンターの共有 (エコー要求 - ICMPv6 受信) ( Profile : ドメイン )
Get-NetFirewallRule -Name  FPS-ICMP6-ERQ-In-NoScope | Set-NetFirewallRule -Enable true



