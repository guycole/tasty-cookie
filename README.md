# tasty-cookie
personal k8s cluster

## Rack Catalog
+ 3x used Dell 7040 ($135/each from CraigsList)
+ 1x used SuperMicro 2u server 84GB RAM 3TB storage ($160 from CraigsList)
+ 1x used NetGear ProSafe GS724 v2 24 port gb managed switch ($75 from eBay)
+ 1x ODROID-C4 [tasty pancake](https://github.com/guycole/tasty-pancake) ($55 from HardKernel)
+ 1x Digital Loggers ethernet power switch ($150 from eBay)
+ 1x Trendnet KVM TK-1602R ($145 from eBay)
 
![front](https://github.com/guycole/tasty-cookie/blob/main/grafix/front_25nov23.png)
![side](https://github.com/guycole/tasty-cookie/blob/main/grafix/side_25nov23.png)

| Host     | Description    | Address     | KVM | Power |
| -------- | ---------------|-------------|-----|-------|
| archer   | odroid c4      | 10.168.0.1  |  7  | 1A    |
| cyril    | netgear switch | 10.168.0.3  |     | 8B    |
| mitsuiko | power control  | 10.168.0.5  |     |       |
| pam      | supermicro     | 10.168.0.11 |  6  | 4A    |
| cheryl   | dell 7040      | 10.168.0.13 |  2  | 1A    |
| lana     | dell 7040      | 10.168.0.15 |  3  | 1A    |
| malory   | dell 7040      | 10.168.0.17 |  4  | 2A    |
