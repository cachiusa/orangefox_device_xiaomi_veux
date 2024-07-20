# OrangeFox device tree for veux/peux

## Device specifications

| Device       | Redmi Note 11 Pro(+) 5G<br>Redmi Note 11E Pro<br>POCO X4 Pro 5G |
| -----------: | :----------------------------------------------------------|
| SoC          | Qualcomm SM6375 Snapdragon 695 5G   |
| CPU          | 2x Qualcomm Kryo 660 Gold up to 2.2GHz<br>6x Qualcomm Kryo 660 Silver up to 1.7GHz |
| GPU          | Adreno 619                          |
| Memory       | 4GB / 6GB / 8GB (LP DDR4X)          |
| Shipped Android version | 11                       |
| Storage      | 64GB / 128GB / 256GB (UFS 2.2)      |
| Battery      | Li-Po 5000 mAh (typ), non-removable |
| Dimensions   | 164.2 x 76.1 x 8.1 mm               |
| Display      | 1080 x 2400 (20:9), 6.67 inches     |

## Building

You can find a full compile guide [here](https://wiki.orangefox.tech/en/dev/building)

_lunch_ command :
```
lunch twrp_veux-eng && mka adbd vendorbootimage
```

If building for boot-as-recovery ROMs, run:
```
export TW_VNDR_BOOT=0
source build/envsetup.sh
lunch twrp_veux-eng && mka adbd bootimage
```


## Credits
- [Kernel](https://github.com/dereference23/kernel_xiaomi_sm6375)

### Copyright
```
#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
```
