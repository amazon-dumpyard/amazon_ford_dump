#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:5246976:ccd9cdbe3d6f9ca33302c0155b471085e25f590a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:4790272:c063adcd949fce3fbff7c0d84c785832399383cd EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery ccd9cdbe3d6f9ca33302c0155b471085e25f590a 5246976 c063adcd949fce3fbff7c0d84c785832399383cd:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
