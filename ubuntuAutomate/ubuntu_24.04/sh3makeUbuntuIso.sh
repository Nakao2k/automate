#/bin/bash

# isoファイルを解凍するディレクトリ
isofile=`ls -1 ubuntu*.iso | sed -e 's/\.iso$//'`

# isoバージョン
isover=`echo $isofile | grep -oP '\d{2}\.\d{2}' | head -n 1`

# 解凍したディレクトリへ移動
cd ${isofile}

# isoファイル作成
xorriso -as mkisofs -r \
  -V "Ubuntu ${isover} LTS AUTO (EFIBIOS)" \
  -o ../OS_CUSTOM_${isofile}.iso \
  --grub2-mbr ../BOOT/1-Boot-NoEmul.img \
  -partition_offset 16 \
  --mbr-force-bootable \
  -append_partition 2 28732ac11ff8d211ba4b00a0c93ec93b ../BOOT/2-Boot-NoEmul.img \
  -appended_part_as_gpt \
  -iso_mbr_part_type a2a0d0ebe5b9334487c068b6b72699c7 \
  -c '/boot.catalog' \
  -b '/boot/grub/i386-pc/eltorito.img' \
  -no-emul-boot -boot-load-size 4 -boot-info-table --grub2-boot-info \
  -eltorito-alt-boot \
  -e '--interval:appended_partition_2:::' \
  -no-emul-boot \
  .


