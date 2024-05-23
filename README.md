# OrangeFox device tree for veux/peux

## Device specifications

| Device       | Redmi Note 11 Pro(+) 5G<br>Redmi Note 11E Pro<br>POCO X4 Pro 5G |
| -----------: | :----------------------------------------------------------|
| SoC          | Qualcomm SM6375 Snapdragon 695 5G   |
| CPU          | 2x Qualcomm® Kryo™ 660 Gold up to 2.2GHz<br>6x Qualcomm® Kryo™ 660 Silver up to 1.7GHz |
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

## Credits
- [Kernel](https://github.com/dereference23/kernel_xiaomi_sm6375)

### Copyright
 ```
  /*
  *  Copyright (C) 2022-2024 The OrangeFox Recovery Project
  *
  * This program is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 3 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  *
  */
  ```
