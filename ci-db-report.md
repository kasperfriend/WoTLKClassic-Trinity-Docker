# database dump analysis (2026-09-05T12:18:49Z)

## 1. download
```
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
 43 45.9M   43 20.0M    0     0  21.9M      0  0:00:02 --:--:--  0:00:02 21.9M100 45.9M  100 45.9M    0     0  26.4M      0  0:00:01  0:00:01 --:--:-- 31.5M
DOWNLOAD_OK 48140818 bytes

7-Zip 23.01 (x64) : Copyright (c) 1999-2023 Igor Pavlov : 2023-06-20
 64-bit locale=C.UTF-8 Threads:4 OPEN_MAX:65536

Scanning the drive for archives:
1 file, 48140818 bytes (46 MiB)

Extracting archive: /tmp/db.7z
--
Path = /tmp/db.7z
Type = 7z
Physical Size = 48140818
Headers Size = 241
Method = LZMA2:25
Solid = +
Blocks = 1

Everything is Ok

Files: 4
Size:       315426802
Compressed: 48140818
--- extracted files:
314258	/tmp/dbx/auth.sql
1182095	/tmp/dbx/characters.sql
105530958	/tmp/dbx/hotfixes.sql
208399491	/tmp/dbx/world.sql
```

## 2. every COLLATE / CHARSET name used in the dump
```
--- distinct collation names:
    753 utf8mb4_unicode_ci
     10 utf8mb3_uca1400_ai_ci
      4 ral
      3 rali
      2 rale
      1 utf8mb4_general_ci
      1 utf8mb4_bin
      1 latin1_swedish_ci
--- distinct charset names:
    750 f8mb4
     10 f8mb3
      2 Mask
      1 in1
```

## 3. which of those MySQL 8.0 does not know
```
Unable to find image 'mysql:8.0' locally
8.0: Pulling from library/mysql
edf85873f64e: Pulling fs layer
6ef6c7b50a93: Pulling fs layer
e3e5d1ac74c1: Pulling fs layer
0d74d296605b: Pulling fs layer
297d04cfe470: Pulling fs layer
4c8a3e0d4e4b: Pulling fs layer
a63160a5eda1: Pulling fs layer
7534d1db9f8d: Pulling fs layer
49ec2dab01d9: Pulling fs layer
ab24264a27e9: Pulling fs layer
96d30d9fbee8: Pulling fs layer
a63160a5eda1: Waiting
7534d1db9f8d: Waiting
49ec2dab01d9: Waiting
ab24264a27e9: Waiting
96d30d9fbee8: Waiting
0d74d296605b: Waiting
297d04cfe470: Waiting
4c8a3e0d4e4b: Waiting
e3e5d1ac74c1: Download complete
6ef6c7b50a93: Verifying Checksum
6ef6c7b50a93: Download complete
edf85873f64e: Download complete
0d74d296605b: Verifying Checksum
0d74d296605b: Download complete
297d04cfe470: Verifying Checksum
297d04cfe470: Download complete
4c8a3e0d4e4b: Verifying Checksum
4c8a3e0d4e4b: Download complete
7534d1db9f8d: Verifying Checksum
7534d1db9f8d: Download complete
a63160a5eda1: Verifying Checksum
a63160a5eda1: Download complete
ab24264a27e9: Verifying Checksum
ab24264a27e9: Download complete
96d30d9fbee8: Verifying Checksum
96d30d9fbee8: Download complete
49ec2dab01d9: Verifying Checksum
49ec2dab01d9: Download complete
edf85873f64e: Pull complete
6ef6c7b50a93: Pull complete
e3e5d1ac74c1: Pull complete
0d74d296605b: Pull complete
297d04cfe470: Pull complete
4c8a3e0d4e4b: Pull complete
a63160a5eda1: Pull complete
7534d1db9f8d: Pull complete
49ec2dab01d9: Pull complete
ab24264a27e9: Pull complete
96d30d9fbee8: Pull complete
Digest: sha256:7dcddc01f13bab2f15cde676d44d01f61fc9f99fe7785e86196dfc07d358ae2b
Status: Downloaded newer image for mysql:8.0
39524490ab6ba8aba814e6d0fa9fe344c93af87b1efb44ef3a1f0061f8dd4e13
mysql:8.0 knows 286 collations
--- used by the dump but UNKNOWN to mysql:8.0:
ral
rale
rali
utf8mb3_uca1400_ai_ci
--- (for reference) used AND known:
latin1_swedish_ci
utf8mb4_bin
utf8mb4_general_ci
utf8mb4_unicode_ci
```

## 4. other MariaDB-only syntax to watch for
```
  uca1400 : 10 line(s)
  RETURNING : 189 line(s)
  ENGINE *= *Aria : 0
0 line(s)
  PAGE_CHECKSUM : 0
0 line(s)
  TRANSACTIONAL : 0
0 line(s)
  utf8mb3 : 10 line(s)
  INSERT +IGNORE : 0
0 line(s)
  battlepay_shop : 5 line(s)
--- sample lines containing uca1400:
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
--- sample lines referencing battlepay_shop:
/*Table structure for table `battlepay_shop` */
DROP TABLE IF EXISTS `battlepay_shop`;
CREATE TABLE `battlepay_shop` (
/*Data for the table `battlepay_shop` */
insert  into `battlepay_shop`(`Entry`,`EntryID`,`GroupID`,`ProductID`,`Ordering`,`VasServiceType`,`StoreDeliveryType`) values 
```
