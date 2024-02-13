#! /bin/sh -e

echo "Loading modules..."
for module in \
    /lib/modules/5.17.0-rc3-next-20220207-g5bd2d473f01f/kernel/drivers/media/dvb-frontends/*.ko \
    /lib/modules/5.17.0-rc3-next-20220207-g5bd2d473f01f/kernel/drivers/media/dvb-frontends/cxd2880/cxd2880.ko \
    /lib/modules/5.17.0-rc3-next-20220207-g5bd2d473f01f/kernel/drivers/media/dvb-frontends/drx39xyj/drx39xyj.ko \
    /lib/modules/5.17.0-rc3-next-20220207-g5bd2d473f01f/kernel/drivers/media/spi/cxd2880-spi.ko \
    /lib/modules/5.17.0-rc3-next-20220207-g5bd2d473f01f/kernel/drivers/thermal/tegra/*.ko
do
    if insmod $module; then
        echo "Loaded module: $(basename $module)"
    else
        echo "Error loading module: $(basename $module)"
    fi
done


exit 0
