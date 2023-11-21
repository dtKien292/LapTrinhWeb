-- Tạo CSDL
CREATE DATABASE BTL_LTW
GO

-- Sử dụng CSDL
USE BTL_LTW
GO

-- Tạo bảng sanpham
CREATE TABLE sanpham (
id VARCHAR(5) PRIMARY KEY,
tensp NVARCHAR(255),
manhinh NVARCHAR(255),
cpu NVARCHAR(255),
ram NVARCHAR(100),
ocung NVARCHAR(100),
dohoa NVARCHAR(255),
hdh NVARCHAR(255),
trongluong VARCHAR(10),
kichthuoc VARCHAR(50),
xuatxu NVARCHAR(255),
nam INT,
giaban FLOAT,
loai NVARCHAR(100),
hang VARCHAR(10),
img1 VARCHAR(20),
img2 VARCHAR(20),
img3 VARCHAR(20)
)
GO

-- Thêm dữ liệu mẫu
INSERT INTO sanpham VALUES
('SP001', N'Laptop Asus TUF GAMING F15 FX506HF-HN014W', N'15.6 inches IPS Panel, 144Hz', 'Intel Core i5-11400H (12MB Cache, up to 4.6GHz, 6 lõi / 12 luồng)', '8GB RAM', '512GB M.2 PCIE G3X2 1x khe M.2 SSD trống', N'NVIDIA GeForce RTX 2050 4GB', 'Windows 11 Home', '2.3 kg', '35.9 x 25.6 x 2.28 ~ 2.45 cm', N'Mỹ', 2021, 16890, N'Gaming', 'ASUS ', '1.jpg', '1n.jpg', '1d.jpg'),

('SP002', N'Laptop ASUS ROG Flow X13 GV301RC-LJ050W', N'13.4 inches IPS Panel, 144Hz', 'AMD Ryzen 7 6800HS', '8GB RAM', '512GB M.2 2230 NVMe™ PCIe® 4.0 SSD', N'AMD Ryzen 7 6800HS', 'Windows 11 Home SL', '1.30 Kg', '29.9 x 22.2 x 1.58 ~ 1.58 cm', N'Mỹ', 2023, 29990, N'Gaming', 'ASUS', '2.jpg', '2n.jpg', '2d.jpg'),

('SP003', N'Laptop Asus Gaming Rog Strix G15 G513IH HN015W', N'15.6 inches IPS Panel, 144Hz', 'AMD Ryzen 7 4800H', '8GB RAM', '512GB SSD NVMe M.2 PCIe Gen 3 x 4', N'Geforce GTX 1650 4GB', 'Windows 11 SL 64 Bit', '2.1 kg', '35.4 x 25.9 x 2.26 ~ 2.72 cm', N'Mỹ', 2021, 17890, N'Gaming', 'ASUS', '3.jpg', '3n.jpg', '3d.jpg'),

('SP004', N'Laptop Asus ROG Strix G16 G614JU-N3135W', N'16 inches Full HD', 'Intel Core i5-13450HX Gen 13', '8GB RAM', '512GB PCIe 4.0 NVMe M.2 SSD', N'NVIDIA GeForce RTX 4050 6GB GDDR6', 'Windows 11 Home', '2.50 kg', '35.4 x 26.4 x 2.26 ~ 3.04 cm', N'Mỹ', 2022, 33890, N'Gaming', 'ASUS', '4.jpg', '4n.jpg', '4d.jpg'),

('SP005', N'Laptop Asus TUF Gaming A16 Advantage Edition FA617NS-N3486W', N'16 inches Full HD', 'AMD Ryzen 7-7735HS (8 lõi/16 luồng, 16MB L3 cache, up to 4.7 GHz max boost)', '8GB RAM', '512GB PCIe 4.0 NVMe M.2 SSD (2 khe cắm M.2 hỗ trợ SATA hoặc NVMe)', N'AMD Radeon RX 7600S 8GB GDDR6', 'Windows 11 Home', '2.20 Kg', '35.5 x 25.2 x 2.21 ~ 2.68 cm', N'Mỹ', 2021, 26490, N'Gaming', 'ASUS', '5.jpg', '5n.jpg', '5d.jpg'),

('SP006', N'Laptop Asus TUF Gaming A15 FA507NU-LP034W', N'15.6 inches Full HD', 'AMD Ryzen 7 7735HS (8 lõi / 16 luồng, 16MB L3 cache, up to 4.7 GHz max boost)', '8GB RAM', '512GB PCIe 4.0 NVMe M.2 SSD (2230)', N'NVIDIA GeForce RTX 4050 6GB GDDR6 AMD Radeon Navi2 Graphics', 'Windows 11 Home', '2.20 kg', '35.4 x 25.1 x 2.24 ~ 2.49 cm', N'Mỹ', 2022, 24890, N'Gaming', 'ASUS', '6.jpg', '6n.jpg', '6d.jpg'),

('SP007', N'Laptop Gaming Acer Nitro 5 Eagle AN515-57-5669 NH.QEHSV.001', N'15.6 inches Full HD', 'Intel Core i5-11400H', '8GB RAM', '512GB PCIe NVMe SSD cắm sẵn', N'NVIDIA GeForce GTX 1650 4 GB GDDR6', 'Windows 10', '2.2 kg', '363.4 (W) x 255 (D) x 23.9 (H) mm', N'Mỹ', 2023, 16190, N'Laptop', 'Dell', '7.jpg', '7n.jpg', '7d.jpg'),

('SP008', N'Laptop MSI Gaming Bravo 15 B7ED-010VN', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '16GB RAM', '512 GB SSD NVMe PCIe Gen 4.0', N'AMD Radeon RX 6550M, 4 GB', 'Windows 10', '2.25 kg', '359 x 259 x 24.95 mm', N'Mỹ', 2021, 15000000, N'Gaming', 'MSI', '8.jpg', '8n.jpg', '8d.jpg'),

('SP009', N'Laptop Lenovo IdeaPad Gaming 3 15ACH6 82K2027QVN', N'15.6 inches Full HD', 'AMD Ryzen 5 5500H', '8GB RAM', '256GB SSD', N'512GB SSD M.2 2242 PCIe 4.0x4 NVMe', 'Windows 11 Home', '2.25 kg', '359.6 x 251.9 x 24.2 mm', N'Mỹ', 2023, 15990, N'Gaming', 'Lenovo', '9.jpg', '9n.jpg', '9d.jpg'),

('SP010', N'Laptop MSI Gaming GF63 12UCX-841VN', N'15.6 inches Full HD', 'Intel Core i5-12450H', '8GB RAM', '512GB SSD M.2 NVMe', N'NVIDIA GeForce RTX 2050 4GB GDDR6', 'Windows 11 Home', '1.8kg', '359 x 254 x 21.7 mm', N'Mỹ', 2022, 16490, N'Gaming', 'MSI', '10.jpg', '10n.jpg', '10d.jpg'),

('SP011', N'Laptop Acer Gaming Aspire 7 A715-76-57CY NH.QGESV.004', N'15.6 inches Full HD', 'Intel Core i5 - 12450H', '8GB RAM', '512 GB SSD M.2 NVMe', N'Intel UHD ', 'Windows 10', '2.1 kg', '362.3 x 237.4 x 19.9 mm', N'Mỹ', 2022, 13990, N'Gaming', 'Acer', '11.jpg', '11n.jpg', '11d.jpg'),

('SP012', N'Laptop HP Gaming Victus 15-FA0115TX 7C0X1PA', N'15.6 inches Full HD', 'Intel Core i5-12500H', '8GB RAM', '512GB SSD M.2 PCIe', N'NVIDIA GeForce RTX 3050 4GB GDDR6', 'Windows 11 Home', '2.29 kg', '357.9 x 255 x 23.5 mm', N'Mỹ', 2021, 19990, N'Gaming', 'HP', '12.jpg', '12n.jpg', '12d.jpg'),

('SP013', N'Laptop gaming MSI GF63 Thin 11SC 664VN', N'15.6 inches Full HD', 'Intel Core i5-11400H 2.2GHz up to 4.5GHz 12MB', '8GB RAM', '512 GB SSD NVMe PCIe', N'NVIDIA GeForce GTX1650 4GB GDDR6', 'Windows 10', '1.86 kg', '359 x 254 x 21.7 mm', N'Mỹ', 2022, 14990, N'Laptop', 'Dell', '13.jpg', '13n.jpg', '13d.jpg'),

('SP014', N'Laptop Acer Aspire 7 A715-76G-5806', N'15.6 inches Full HD', 'Intel Core i5 - 12450H', '16GB RAM', '512 GB SSD NVMe PCIe', N'NVIDIA GeForce RTX 3050, 4 GB', 'Windows 11 Home SL', '2.1 kg', '362.3 x 237.4 x 19.9 mm', N'Mỹ', 2023, 19990, N'Gaming', 'Acer', '14.jpg', '14n.jpg', '14d.jpg'),

('SP015', N'Laptop Gigabyte MF F2VN333SH', N'15.6 inches Full HD', 'Intel Core i5-12450H 3.3GHz up to 4.4GHz, 8 nhân 12 luồng, 12MB Cache', '8GB RAM', '512GB SSD M.2 PCIE G4X4', N'Nvidia Geforce RTX 4050 4GB GDDR6', 'Windows 11', '1,9 kg', '360 x 238 x 22.7 (mm)', N'Mỹ', 2021, 20990, N'Gaming', 'Gigabyte', '15.jpg', '15n.jpg', '15d.jpg'),

('SP016', N'Laptop Gigabyte G5 GD-51VN123SO', N'15.6 inches Full HD', 'Intel Core i5-11400H', '16GB RAM', '512GB M.2 NVMe PCIe', N'NVidia Geforce RTX 3050 4GB GDDR6', 'Windows 11 Home', '2.03 kg', '36.1 x 25.8 x 2.49 ~ 3.16 cm', N'Mỹ', 2022, 17990, N'Gaming', 'Gigabyte', '16.jpg', '16n.jpg', '16d.jpg'),

('SP017', N'Laptop Lenovo Gaming Legion 5 Pro 16ACH6H', N'16 inches Full HD', 'AMD Ryze 7-5800H', '16GB RAM', '512GB SSD M.2 2280 PCIe 3.0x4 NVMe', N'NVIDIA GeForce RTX 3060 6GB GDDR6', 'Windows 10', '2.45 kg', '356 x 260.4-264.4 x 21.7-26.85 mm', N'Mỹ', 2023, 32990, N'Gaming', 'Lenovo', '17.jpg', '17n.jpg', '17d.jpg'),

('SP018', N'Laptop LG Gram 2023 16Z90R-E.AH75A5', N'16 inches Full HD', 'Intel Core i7-1360P 2.2 GHz', '16GB RAM', '512GB SSD NVMe Gen 4', N'Nvidia RTX3050 4GB', 'Windows 11', '1.3 kg', '31.2 x 21.39 x 1.68 cm', N'Mỹ', 2023, 42990, N'Gaming', 'LG', '18.jpg', '18n.jpg', '18d.jpg'),

('SP019', N'Laptop Dell Alienware X15 R2', N'15.6 inches Full HD', 'Intel Core i9-12900H (up to 5.0 GHz, 14 lõi / 20 luồng, 24MB Cache)', '16GB RAM', 'SSD 1TB M.2 PCIe NVMe', N'NVIDIA GeForce RTX 3070 Ti, 8 GB GDDR6', 'Windows 11 Pro', '2.27 kg', '359.7 x 277.33 x 15.9 mm', N'Mỹ', 2021, 49990, N'Gaming', 'Dell', '19.jpg', '19n.jpg', '19d.jpg'),

('SP020', N'Laptop Dell Alienware X17', N'17.3 inches Full HD', 'Intel® Core™ i9-12900HK thế hệ thứ 12', '32GB RAM', '1 TB, M.2, PCIe NVMe, SSD', N'NVIDIA® GeForce RTX™ 3080 Ti, 16 GB GDDR6', 'Windows 11 Home, Tiếng Anh', '3.2 kg', '20.9 x 39.9 x 30 cm', N'Mỹ', 2023, 78990, N'Gaming', 'Dell', '20.jpg', '20n.jpg', '20d.jpg'),

('SP021', N'Laptop Asus VivoBook Go 14 E1404FA-NK177W', N'14 inches Full HD', 'AMD Ryzen 5 7520U', '16GB RAM', 'SSD 512GB M.2 NVMe PCIe 3.0', N'AMD Radeon Graphics', 'Windows 11 Home', '1.38 kg', '32.45 x 21.39 x 1.79 ~ 1.79 cm', N'Mỹ', 2021, 12990, N'Văn phòng', 'Asus', '21.jpg', '21n.jpg', '21d.jpg'),

('SP022', N'Laptop Asus E210MA GJ537W', N'11.6 inches Full HD', 'Intel Celeron N4020', '4GB RAM', '128G eMMC', N'UHD Graphics 600', 'Windows 11 Home SL', '1.05 kg', '27.90(W) x 19.10(D) x 1.69 ~ 1.69(H) cm', N'Mỹ', 2022, 4990, N'Văn phòng', 'Asus', '22.jpg', '22n.jpg', '22d.jpg'),

('SP023', N'Laptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN', N'14 inches Full HD', 'Intel Core i5-12450H', '16GB RAM', '512GB SSD M.2 2242 PCIe 4.0x4 NVMe', N'Intel UHD Graphics', 'Windows 11 Home', '1.46 kg', '312 x 221 x 17.9 mm', N'Mỹ', 2022, 14790, N'Văn phòng', 'Lenovo', '23.jpg', '23n.jpg', '23d.jpg'),

('SP024', N'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0005VN', N'14 inches Full HD', 'Intel Core i5-12450H', '16GB RAM', '512GB SSD M.2 2242 PCIe 4.0x4 NVMe', N'Intel UHD Graphics', 'Windows 11 Home', '1.37 kg', '324.3 x 213.8 x 17.9 mm', N'Mỹ', 2021, 14190, N'Văn phòng', 'Lenovo', '24.jpg', '24n.jpg', '24d.jpg'),

('SP025', N'Laptop Asus VivoBook 15 OLED A1505VA-L1114W', N'15.6 inches Full HD', 'Intel Core i5-13500H 2.6 GHz', '16GB RAM', '512GB M.2 NVMe PCIe 3.0 SSD', N'Intel Iris Xe Graphics', 'Windows 11 Home', '1.70 kg', '35.68 x 22.76 x 1.99 ~ 1.99 cm', N'Mỹ', 2023, 17990, N'Văn phòng', 'Asus', '25.jpg', '25n.jpg', '25d.jpg'),

('SP00026', N'Macbook Pro 16 M3 Pro 36GB - 512GB | Chính hãng Apple Việt Nam', N'16.2 inches Full HD', 'Apple M3 Pro 12 nhân', '36GB', '512GB', N'18 nhân Neural Engine 16 nhân', 'macOS', '1.55 kg', 'Cao 1,55 - Rộng 31,26 - Dài 22,12 cm', N'Mỹ', 2023, 74990, N'Văn phòng', 'Apple', '26.jpg', '26n.jpg', '26d.jpg'), 

('SP00027', N'Laptop Asus VivoBook 14X OLED S3405VA-KM071W', N'14 inches Full HD', 'Intel Core i9-13900H (24MB Cache, up to 5.4GHz, 14 lõi / 20 luồng)', '16GB ', '512GB M.2 NVM PCIe 3.0 SSD', N'Intel Iris Xe Graphics', 'Windows 11 Home', '1.4 kg', '31.71 x 22.25 x 1.89 ~ 1.89 cm', N'Mỹ', 2022, 23090, N'Văn phòng', 'Asus', '27.jpg', '27n.jpg', '27d.jpg'), 

('SP00028', N'Laptop ASUS ZenBook UM3402YA-KM074W', N'14 inches Full HD', 'AMD Ryzen 5 5625U Mobile', '8GB RAM ', '512GB M.2 NVMe™ PCIe® 3.0 SSD', N'AMD Radeon Graphics', 'Windows 11 Home SL', '1.39 kg', '31.36 x 22.06 x 1.69 ~ 1.69 cm', N'Mỹ', 2022, 17990, N'Văn phòng', 'ASUS', '28.jpg', '28n.jpg', '28d.jpg'), 

('SP00029', N'Laptop Huawei Matebook D14', N'14 inches Full HD', 'Intel® Core™ i5-1240P', '16GB RAM ', 'SSD 512GB NVMe PCIe SSD', N' Intel® Iris® Xe Graphics', 'Windows 11 Home', '1.49 kg', '307.5 x 223.8 x 15.9 mm', N'Mỹ', 2022, 15290, N'Văn phòng', 'Huawei', '29.jpg', '29n.jpg', '29d.jpg'), 

('SP00030', N'Laptop ASUS ZenBook UP5401ZA-KN005W', N'14 inches Full HD', 'Intel Core i5-12500H', '8GB RAM ', 'LPDDR5', N'Intel Iris Xe Graphics', 'Windows 11 Home SL', '1.40 kg', '31.10 x 22.30 x 1.59 ~ 1.59 cm', N'Mỹ', 2022, 19990, N'Văn phòng', 'ASUS', '30.jpg', '30n.jpg', '30d.jpg'), 

('SP00031', N' ten', N' xxxx inches Full HD', 'Intel Core i5-12500H', '8GB RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '31.jpg', '31n.jpg', '31d.jpg'), 

('SP00032', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '32.jpg', '32n.jpg', '32d.jpg'), 

('SP00033', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '33.jpg', '33n.jpg', '33d.jpg'), 

('SP00034', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '34.jpg', '34n.jpg', '34d.jpg'), 

('SP00035', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '35.jpg', '35n.jpg', '35d.jpg'), 

('SP00036', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '36.jpg', '36n.jpg', '36d.jpg'), 

('SP00037', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '37.jpg', '37n.jpg', '37d.jpg'), 

('SP00038', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '38.jpg', '38n.jpg', '38d.jpg'), 

('SP00039', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '39.jpg', '39n.jpg', '39d.jpg'), 

('SP00040', N' ten', N' xxxx inches Full HD', 'cpu', 'RAM ', 'SSD', N' DH', 'OS', 'xxx kg', 'kichthuoc', N'Mỹ', 2022, xxxxx, N'Văn phòng', 'xxxx', '40.jpg', '40n.jpg', '40d.jpg'), 



('SP041', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '41.jpg', '41n.jpg', '41d.jpg'),
('SP042', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '42.jpg', '42n.jpg', '42d.jpg'),
('SP043', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '43.jpg', '43n.jpg', '43d.jpg'),
('SP044', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '44.jpg', '44n.jpg', '44d.jpg'),
('SP045', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '45.jpg', '45n.jpg', '45d.jpg'),
('SP046', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '46.jpg', '46n.jpg', '46d.jpg'),
('SP047', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '47.jpg', '47n.jpg', '47d.jpg'),
('SP048', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '48.jpg', '48n.jpg', '48d.jpg'),
('SP049', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '49.jpg', '49n.jpg', '49d.jpg'),
('SP050', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '50.jpg', '50n.jpg', '50d.jpg'),
('SP051', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '51.jpg', '51n.jpg', '51d.jpg'),
('SP052', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '52.jpg', '52n.jpg', '52d.jpg'),
('SP053', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '53.jpg', '53n.jpg', '53d.jpg'),
('SP054', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '54.jpg', '54n.jpg', '54d.jpg'),
('SP055', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '55.jpg', '55n.jpg', '55d.jpg'),
('SP056', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '56.jpg', '56n.jpg', '56d.jpg'),
('SP057', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '57.jpg', '57n.jpg', '57d.jpg'),
('SP058', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '58.jpg', '58n.jpg', '58d.jpg'),
('SP059', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '59.jpg', '59n.jpg', '59d.jpg'),
('SP060', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '60.jpg', '60n.jpg', '60d.jpg'),
('SP061', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '61.jpg', '61n.jpg', '61d.jpg'),
('SP062', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '62.jpg', '62n.jpg', '62d.jpg'),
('SP063', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '63.jpg', '63n.jpg', '63d.jpg'),
('SP064', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '64.jpg', '64n.jpg', '64d.jpg'),
('SP065', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '65.jpg', '65n.jpg', '65d.jpg'),
('SP066', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '66.jpg', '66n.jpg', '66d.jpg'),
('SP067', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '67.jpg', '67n.jpg', '67d.jpg'),
('SP068', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '68.jpg', '68n.jpg', '68d.jpg'),
('SP069', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '69.jpg', '69n.jpg', '69d.jpg'),
('SP070', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '70.jpg', '70n.jpg', '70d.jpg'),
('SP071', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '71.jpg', '71n.jpg', '71d.jpg'),
('SP072', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '72.jpg', '72n.jpg', '72d.jpg'),
('SP073', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '73.jpg', '73n.jpg', '73d.jpg'),
('SP074', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '74.jpg', '74n.jpg', '74d.jpg'),
('SP075', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '75.jpg', '75n.jpg', '75d.jpg'),
('SP076', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '76.jpg', '76n.jpg', '76d.jpg'),
('SP077', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '77.jpg', '77n.jpg', '77d.jpg'),
('SP078', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '78.jpg', '78n.jpg', '78d.jpg'),
('SP079', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '79.jpg', '79n.jpg', '79d.jpg'),
('SP080', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '80.jpg', '80n.jpg', '80d.jpg'),
('SP081', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '81.jpg', '81n.jpg', '81d.jpg'),
('SP082', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '82.jpg', '82n.jpg', '82d.jpg'),
('SP083', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '83.jpg', '83n.jpg', '83d.jpg'),
('SP084', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '84.jpg', '84n.jpg', '84d.jpg'),
('SP085', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '85.jpg', '85n.jpg', '85d.jpg'),
('SP086', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '86.jpg', '86n.jpg', '86d.jpg'),
('SP087', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '87.jpg', '87n.jpg', '87d.jpg'),
('SP088', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '88.jpg', '88n.jpg', '88d.jpg'),
('SP089', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '89.jpg', '89n.jpg', '89d.jpg'),
('SP090', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '90.jpg', '90n.jpg', '90d.jpg'),
('SP091', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '91.jpg', '91n.jpg', '91d.jpg'),
('SP092', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '92.jpg', '92n.jpg', '92d.jpg'),
('SP093', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '93.jpg', '93n.jpg', '93d.jpg'),
('SP094', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '94.jpg', '94n.jpg', '94d.jpg'),
('SP095', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '95.jpg', '95n.jpg', '95d.jpg'),
('SP096', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '96.jpg', '96n.jpg', '96d.jpg'),
('SP097', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '97.jpg', '97n.jpg', '97d.jpg'),
('SP098', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '98.jpg', '98n.jpg', '98d.jpg'),
('SP099', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '99.jpg', '99n.jpg', '99d.jpg'),
('SP100', N'Laptop Dell Inspiron 3511', N'15.6 inches Full HD', 'Intel Core i3-1115G4', '8GB RAM', '256GB SSD', N'Intel UHD Graphics', 'Windows 10', '1.8kg', '357 x 235 x 17.95 mm', N'Mỹ', 2021, 15000000, N'Laptop', 'Dell', '100.jpg', '100n.jpg', '100d.jpg')


-- Kiểm tra dữ liệu
SELECT * FROM sanpham