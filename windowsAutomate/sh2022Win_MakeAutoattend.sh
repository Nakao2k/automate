#/bin/bash

# 入力/出力ファイルを定義
win2022std_rw=autounattend_win2022std_jp_RdpWinrm.xml
win2022dc_rw=autounattend_win2022dc_jp_RdpWinrm.xml
win2022_rw=autounattend_win2022_jp_RdpWinrm.xml

win2022std_rdp=autounattend_win2022std_jp_Rdp.xml
win2022dc_rdp=autounattend_win2022dc_jp_Rdp.xml
win2022_rdp=autounattend_win2022_jp_Rdp.xml

# win2022 stdの最終行の<cpi:offlineImage>タグを削除
sed -i -r "s/( *)<cpi:offlineImage(.*)//" $win2022std_rw
# ubuntuでは\r\n内の\rが削除されないため削除を行う
sed -i -z 's/\r\n\n/\r\n/g' $win2022std_rw


# win2022 stdのファイルをコピーしてwin2022 dc作成
cp $win2022std_rw $win2022dc_rw

# Windows Server 2022 Server StandardをWindows Server 2022 Server Datacenterに変更
sed -i -r "s/(<Value>)Windows Server 2022 SERVERSTANDARD(<\/Value>)/\1Windows Server 2022 SERVERDATACENTER\2/" $win2022dc_rw

# win2022 stdのファイルをコピーしてwin2022 作成
cp $win2022std_rw $win2022_rw

# <InstallFrom>タグを削除
sed -i -r "/( *)(<InstallFrom>)/,/( *)(<\/InstallFrom>)/d" $win2022_rw

# win2022 std RdpWinrmのファイルをコピーしてwin2022 std Rdp作成
cp $win2022std_rw $win2022std_rdp

# winrmと再起動のコマンドスクリプトを削除 Order 11から17
sed -i '167,207d' $win2022std_rdp

# win2022 dc RdpWinrmのファイルをコピーしてwin2022 dc Rdp作成
cp $win2022dc_rw $win2022dc_rdp

# winrmと再起動のコマンドスクリプトを削除 Order 11から17
sed -i '167,207d' $win2022dc_rdp

# win2022 std RdpWinrmのファイルをコピーしてwin2022 Rdp作成
cp $win2022std_rw $win2022_rdp

# winrmと再起動のコマンドスクリプトを削除 Order 11から17
sed -i '167,207d' $win2022_rdp

# <InstallFrom>タグを削除
sed -i -r "/( *)(<InstallFrom>)/,/( *)(<\/InstallFrom>)/d" $win2022_rdp

