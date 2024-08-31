#!/bin/bash

# isoファイルを解凍するディレクトリ
isofile=`ls -1 ubuntu*.iso | sed -e 's/\.iso$//'`

# isoバージョン
isover=`echo $isofile | grep -oP '\d{2}\.\d{2}' | head -n 1`

# 現在の時間 バックアップ用
bktime=`date +"%Y%m%d%H%M"`

# 解凍したディレクトリへ移動
cd ${isofile}

# [BOOT]フォルダを外に出す
mv '[BOOT]' ../BOOT

# 元のディレクトリに戻る
cd ..

# ディレクトリ作成
mkdir ${isofile}/_auto
mkdir ${isofile}/_auto/bios
mkdir ${isofile}/_auto/both
mkdir ${isofile}/_auto/uefi

# 空ファイルmeta-dataを作成
touch ${isofile}/_auto/both/meta-data
touch ${isofile}/_auto/bios/meta-data
touch ${isofile}/_auto/uefi/meta-data

# user-dataを更新ファイルで上書き
cp user-data-BOTH.txt  ${isofile}/_auto/both/user-data
cp user-data-BIOS.txt  ${isofile}/_auto/bios/user-data
cp user-data-UEFI.txt  ${isofile}/_auto/uefi/user-data

# 元のgrub.confをバックアップ
mv ${isofile}/boot/grub/grub.cfg ${isofile}/boot/grub/grub.cfg_${bktime}

# grub.confを更新ファイルで上書き
cp grub_${isover}.cfg ${isofile}/boot/grub/grub.cfg

