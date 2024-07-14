#/bin/bash

# 入力/出力ファイルを定義
win10pro=autounattend_win10pro_jp.xml
win11pro=autounattend_win11pro_jp.xml

win10home=autounattend_win10home_jp.xml
win11home=autounattend_win11home_jp.xml

win10any=autounattend_win10_jp.xml
win11any=autounattend_win11_jp.xml


# win10 proのファイルをコピーしてwin11 pro作成
cp $win10pro $win11pro

# Windows 10 proをWindows 11 proに変更
sed -i -r "s/(<Value>)Windows 10 Pro(<\/Value>)/\1Windows 11 Pro\2/" $win11pro


# win10 proのファイルをコピーしてwin10 home作成
cp $win10pro $win10home

# Windows 10 proをWindows 10 homeに変更
sed -i -r "s/(<Value>)Windows 10 Pro(<\/Value>)/\1Windows 10 Home\2/" $win10home


# win11 proのファイルをコピーしてwin11 home作成
cp $win11pro $win11home

# Windows 11 proをWindows 11 homeに変更
sed -i -r "s/(<Value>)Windows 11 Pro(<\/Value>)/\1Windows 11 Home\2/" $win11home


# win10 proのファイルをコピーしてwin10 any作成
cp $win10pro $win10any

# コメントアウト開始
sed -i -r "s/( *)(<InstallFrom>)/\1<\!--\r\n\1\2/" $win10any

# コメントアウト終了
sed -i -r "s/( *)(<\/InstallFrom>)/\1\2\r\n\1-->/" $win10any


# win11 proのファイルをコピーしてwin11 any作成
cp $win11pro $win11any

# コメントアウト開始
sed -i -r "s/( *)(<InstallFrom>)/\1<\!--\r\n\1\2/" $win11any

# コメントアウト終了
sed -i -r "s/( *)(<\/InstallFrom>)/\1\2\r\n\1-->/" $win11any


