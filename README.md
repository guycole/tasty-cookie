# tasty-cookie
personal k8s cluster

## Rack Catalog
+ 3x used Dell 7040 ($135/each from CraigsList)
+ 1x used SuperMicro 2u server 84GB RAM 3TB storage ($160 from CraigsList)
+ 1x used NetGear ProSafe GS724 v2 24 port gb managed switch ($75 from eBay)
+ 1x ODROID-C4 [tasty pancake](https://github.com/guycole/tasty-pancake) ($55 from HardKernel)
+ 1x Digital Loggers ethernet power switch ($150 from eBay)
+ 1x Trendnet KVM TK-1602R ($145 from eBay)
+ 1x 12U open frame rack [$90 from Amazon](https://www.amazon.com/dp/B0C64X8J8R?ref=ppx_yo2ov_dt_b_product_details&th=1)
 
![front](https://github.com/guycole/tasty-cookie/blob/main/grafix/front_25nov23.png)
![side](https://github.com/guycole/tasty-cookie/blob/main/grafix/side_25nov23.png)
![network](https://github.com/guycole/tasty-cookie/blob/main/grafix/network_25nov23.png)

| Host    | Description                 | Address     | KVM | Power      |
| ------- | ----------------------------|-------------|-----|------------|
| archer  | odroid c4 (network gateway) | 10.168.0.1  |  7  | unswitched |
| cyril   | netgear GS724 (switch)      | 10.168.0.3  |     | 5B         |
| mitsuko | power control               | 10.168.0.5  |     |            |
| ray     | netgear ReadyNAS (NFS)      | 10.168.0.7  |     | unswitched |
| pam     | supermicro (k8s worker)     | 10.168.0.11 |  6  | 4A         |
| cheryl  | dell 7040  (k8s worker)     | 10.168.0.13 |  2  | 1A         |
| lana    | dell 7040  (k8s worker)     | 10.168.0.15 |  3  | 1A         |
| malory  | dell 7040  (k8s master)     | 10.168.0.17 |  4  | 2A         |
| krieger | ASUS P5Q (NFS)              | 10.168.0.19 |     | unswitched |
|         | trendnet kvm                |             |     | 8B         |

All servers on Ubuntu 22.04 LTS

| Host    | Description             | export       | mount        | pv         | storage class |
| ------- | ------------------------|--------------|--------------|------------|---------------|
| ray     | netgear ReadyNAS (NFS)  | k8s          |              |            |               |
| pam     | supermicro (k8s worker) |              | /var/k8svol  | pam-pv1    | local-storage |
| pam     | supermicro (k8s worker) |              | /var/nfs/k8s |            | nfs-storage   |
| cheryl  | dell 7040  (k8s worker) |              | /var/k8svol  | cheryl-pv1 | local-storage |
| cheryl  | dell 7040  (k8s worker) |              | /var/nfs/k8s |            | nfs-storage   |
| lana    | dell 7040  (k8s worker) |              | /var/k8svol  | lana-pv1   | local-storage |
| lana    | dell 7040  (k8s worker) |              | /var/nfs/k8s |            | nfs-storage   |
| malory  | dell 7040  (k8s master) |              |              |            |               |
| krieger | ASUS P5Q (NFS)          | /var/nfs/k8s |              |            |               |

