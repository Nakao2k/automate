#/bin/bash

# 入力/出力ファイルを定義
win2022std=autounattend_win2022std_jp.xml
win2022dc=autounattend_win2022dc_jp.xml
win2022any=autounattend_win2022any_jp.xml


# win2022 stdのファイルをコピーしてwin2022 dc作成
cp $win2022std $win2022dc

# Windows Server 2022 SERVERSTANDARDをWindows 11 proに変更
sed -i -r "s/(<Value>)Windows Server 2022 SERVERSTANDARD(<\/Value>)/\1Windows Server 2022 SERVERDATACENTER\2/" $win2022dc


# win2022 proのファイルをコピーしてwin2022 any作成
cp $win2022std $win2022any

# コメントアウト開始
sed -i -r "s/( *)(<InstallFrom>)/\1<\!--\r\n\1\2/" $win2022any

# コメントアウト終了
sed -i -r "s/( *)(<\/InstallFrom>)/\1\2\r\n\1-->/" $win2022any


