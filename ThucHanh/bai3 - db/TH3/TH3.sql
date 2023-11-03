use QLBH_T081
go
create table VATTU(
	[mavtu] [varchar](4) primary key,
	[tenvtu] [nvarchar] (255),
	[dvtinh] [nvarchar](255),
	[phantram] [real]
)
INSERT INTO VATTU VALUES ('DD01',N'Điện thoại di động Samsung M22',N'Bộ',40)
INSERT INTO VATTU  VALUES ('DD02',N'Điện thoại di động Huewei B34',N'Bộ',40)
INSERT INTO VATTU  VALUES ('TL15',N'Tủ lạnh Sanyo 150 lít',N'Cái',25)
INSERT INTO VATTU  VALUES ('TL90',N'Tủ lạnh Hitachi 90 lít',N'Cái',20)
INSERT INTO VATTU  VALUES ('TV14',N'Màn hình máy tính ASUS 14 inches',N'Cái',15)
INSERT INTO VATTU  VALUES ('TV21',N'Màn hình máy tính DELL 21 inches',N'Cái',10)
INSERT INTO VATTU  VALUES ('TV29',N'Màn hình máy tính Sony 29 inches',N'Cái',10)
INSERT INTO VATTU  VALUES ('VD01',N'Dàn máy nghe nhạc 1 đĩa',N'Bộ',30)
INSERT INTO VATTU  VALUES ('VD02',N'Dàn máy nghe nhạc 3 đĩa',N'Bộ',30)
create table NHACC(
	[mancc] [varchar](3) primary key,
	[tenncc] [nvarchar](255),
	[diachi] [nvarchar](255),
	[dienthoai] [varchar](20)
)
go
INSERT INTO NHACC VALUES ('C01','Bùi Tiến Trường','Xuân La, Tây Hồ, Hà Nội','0989995221')
INSERT INTO NHACC VALUES ('C02','Nguyễn Thị Thu','Quan Hoa, Cầu Giấy, Hà Nội','0979012300')
INSERT INTO NHACC VALUES ('C03','Ngô Thanh Tùng','Kim Liên, Đống Đa','0988098591')
INSERT INTO NHACC VALUES ('C04','Bùi Tiến Lập','Hà Đông, Hà Nội','0904255934')
INSERT INTO NHACC VALUES ('C05','Hoàng Minh Công','Mỗ Lao, Hà Nội','chua co')
INSERT INTO NHACC VALUES ('C07','Bùi Đức Kiên','Tổ 11, Cụm 2, Xuân La','0437530097')
create table DONDH(
	[sodh] [varchar](4) primary key,
	[ngaydathang] [date],
	[mancc] [varchar](3) references NHACC(mancc)
)
go

create table CTDONDH(
	[sodh] [varchar](4) references DONDH(sodh) ON DELETE CASCADE,
	[mavtu] [varchar](4) references VATTU(mavtu) ON DELETE CASCADE ,
	[sldat] [int]
)
go

create table PNHAP(
	[sopn] [varchar](4) primary key,
	[ngaynhap] [date],
	[sodh] [varchar](4) references DONDH(sodh) ON DELETE CASCADE
)
go

create table CTPNHAP(
	[sopn] [varchar](4) references PNHAP(sopn) ON DELETE CASCADE,
	[mavtu] [varchar](4) references VATTU(mavtu) ON DELETE CASCADE,
	[slnhap] [int],
	[dgnhap] [money] 
)
go

create table PXUAT(
	[sopx] [varchar](4) primary key,
	[ngayxuat] [date],
	[tenkh] [nvarchar](255) not null
)
go

create table CTPXUAT(
	[sopx] [varchar](4) references PXUAT(sopx) ON DELETE CASCADE,
	[mavtu] [varchar](4) references VATTU(mavtu) ON DELETE CASCADE,
	[slxuat] [int] ,
	[dgxuat] [money]
)
go

CREATE TABLE TONKHO (
    [namthang] [varchar](6),
    [mavtu] [varchar](4) REFERENCES VATTU(mavtu) ON DELETE CASCADE,
    [sldau] [int],
    [tongsln] [int],
    [tongslx] [int],
    [slcuoi] [int]
);

INSERT INTO DONDH ([sodh], [ngaydathang], [mancc]) VALUES ('D001', '2023-01-15', 'C03');
INSERT INTO DONDH ([sodh], [ngaydathang], [mancc]) VALUES ('D002', '2023-01-30', 'C01');
INSERT INTO DONDH ([sodh], [ngaydathang], [mancc]) VALUES ('D003', '2023-02-10', 'C02');
INSERT INTO DONDH ([sodh], [ngaydathang], [mancc]) VALUES ('D004', '2023-02-17', 'C05');
INSERT INTO DONDH ([sodh], [ngaydathang], [mancc]) VALUES ('D005', '2023-03-01', 'C02');
INSERT INTO DONDH ([sodh], [ngaydathang], [mancc]) VALUES ('D006', '2023-03-12', 'C05');

-- Chèn dữ liệu vào bảng PNHAP
INSERT INTO PNHAP ([sopn], [sodh], [ngaynhap]) VALUES ('N001', 'D001', '2023-01-17');
INSERT INTO PNHAP ([sopn], [sodh], [ngaynhap]) VALUES ('N002', 'D001', '2023-01-20');
INSERT INTO PNHAP ([sopn], [sodh], [ngaynhap]) VALUES ('N003', 'D002', '2023-01-31');
INSERT INTO PNHAP ([sopn], [sodh], [ngaynhap]) VALUES ('N004', 'D003', '2023-02-15');

INSERT INTO CTDONDH VALUES('D001','DD01',10)
INSERT INTO CTDONDH VALUES('D001','DD02',15)
INSERT INTO CTDONDH VALUES('D002','VD02',30)
INSERT INTO CTDONDH VALUES('D003','TV14',10)
INSERT INTO CTDONDH VALUES('D003','TV29',20)
INSERT INTO CTDONDH VALUES('D004','TL90',10)
INSERT INTO CTDONDH VALUES('D005','TV14',10)
INSERT INTO CTDONDH VALUES('D005','TV29',20)
INSERT INTO CTDONDH VALUES('D006','TV14',10)
INSERT INTO CTDONDH VALUES('D006','TV29',20)
INSERT INTO CTDONDH VALUES('D005','VD01',20)

INSERT INTO CTPNHAP VALUES('N001','DD01',8,2500000)
INSERT INTO CTPNHAP VALUES('N001','DD02',10,3500000)
INSERT INTO CTPNHAP VALUES('N002','DD01',2,2500000)
INSERT INTO CTPNHAP VALUES('N002','DD02',5,3500000)
INSERT INTO CTPNHAP VALUES('N003','VD02',30,2500000)
INSERT INTO CTPNHAP VALUES('N004','TV14',5,2500000)
INSERT INTO CTPNHAP VALUES('N004','TV29',12,3500000)

-- Chèn dữ liệu vào bảng PXUAT
INSERT INTO PXUAT  VALUES ('X001', '2023-01-17', N'Dương Minh Châu');
INSERT INTO PXUAT  VALUES ('X002', '2023-01-25', N'Nguyễn Kim Dung');
INSERT INTO PXUAT  VALUES ('X003', '2023-01-31', N'Nguyễn Tiến Dũng');

INSERT INTO CTPXUAT VALUES('X001','DD01',2,3500000)
INSERT INTO CTPXUAT VALUES('X002','DD01',1,3500000)
INSERT INTO CTPXUAT VALUES('X002','DD02',5,4900000)
INSERT INTO CTPXUAT VALUES('X003','DD01',3,3500000)
INSERT INTO CTPXUAT VALUES('X003','DD02',2,4900000)
INSERT INTO CTPXUAT VALUES('X003','VD02',10,3250000)

INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202301', 'DD01', 0, 10, 6, 4);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202301', 'DD02', 0, 15, 7, 8);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202301', 'VD02', 0, 30, 10, 20);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202302', 'DD01', 4, 0, 0, 4);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202302', 'DD02', 8, 0, 0, 8);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202302', 'VD02', 20, 0, 0, 20);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202302', 'TV14', 5, 0, 0, 5);
INSERT INTO TONKHO ([namthang], [mavtu], [sldau], [tongsln], [tongslx], [slcuoi]) VALUES ('202302', 'TV29', 12, 0, 0, 12);

select * from TONKHO
select * from VATTU
