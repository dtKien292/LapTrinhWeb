create database QLBH_T081
go
use QLBH_T081
go

create table khachHang(
	[maKH] [varchar](12) primary key,
	[nameKH] [nvarchar](255),
	[ns] [date],
	[dc] [nvarchar](255),
	[email] [varchar](255),
	[dt] [varchar](12)
)
go
create table nhanVien(
	[maNV] [varchar](10) primary key,
	[nameNV] [nvarchar](255),
	[ns] [date],
	[dc] [nvarchar](255),
	[email] [varchar](255),
	[dt] [varchar](12)
)
go
select  * from khachHang
create table donHang(
	[maHD] [varchar](12) primary key,
	[maKH] [varchar](12) references khachHang(maKH) ON DELETE CASCADE,
	[maNV] [varchar](10) references nhanVien(maNV) ON DELETE CASCADE,
	[ndh] [date],
	[mathang] [nvarchar] (255),
	[soluong] [int],
	[dongia] [int]
)
go
select * from khachHang
INSERT INTO nhanVien VALUES ('001', 'Nguyen Van A', '1998-12-22', 'Ha Noi', 'nv1@gami.com', '01234567');
INSERT INTO nhanVien VALUES ('002', 'Nguyen Van B', '1998-12-21', 'Ha Noi', 'nv2@gami.com', '01234567');
INSERT INTO nhanVien VALUES ('003', 'Nguyen Van C', '1998-12-20', 'Ha Noi', 'nv3@gami.com', '01234567');
INSERT INTO nhanVien VALUES ('004', 'Nguyen Van D', '1998-12-19', 'Ha Noi', 'nv4@gami.com', '01234567');
INSERT INTO nhanVien VALUES ('005', 'Nguyen Van E', '1998-12-18', 'Ha Noi', 'nv5@gami.com', '01234567');

insert into donHang values('001','001','001','2023-05-11','Mỳ tôm','5','5000');
insert into donHang values('002','002','001','2023-05-11','Mỳ tôm','7','5000');
insert into donHang values('003','003','001','2023-05-11','Mỳ tôm','8','5000');
insert into donHang values('004','004','001','2023-05-11','Mỳ tôm','4','5000');
insert into donHang values('005','005','001','2023-05-11','Mỳ tôm','1','5000');