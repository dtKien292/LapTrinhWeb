/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

//create table donHang(

import java.sql.Date;

//	[maHD] [varchar](12) primary key,
//	[maKH] [varchar](12) references khachHang(maKH),
//	[maNV] [varchar](10) references nhanVien(maNV),
//	[ndh] [date],
//	[mathang] [nvarchar] (255),
//	[soluong] [int],
//	[dongia] [int]
//)
//go
public class donHang {
    private String maHD;
    private khachHang khachhang;
    private nhanVien nhanvien;
    private Date ndh;
    private String mathang;
    private Integer soluong,dongia;

    public donHang() {
    }

    public donHang(String maHD, khachHang khachhang, nhanVien nhanvien, Date ndh, String mathang, Integer soluong, Integer dongia) {
        this.maHD = maHD;
        this.khachhang = khachhang;
        this.nhanvien = nhanvien;
        this.ndh = ndh;
        this.mathang = mathang;
        this.soluong = soluong;
        this.dongia = dongia;
    }

    public String getMaHD() {
        return maHD;
    }

    public void setMaHD(String maHD) {
        this.maHD = maHD;
    }

    public khachHang getKhachhang() {
        return khachhang;
    }

    public void setKhachhang(khachHang khachhang) {
        this.khachhang = khachhang;
    }

    public nhanVien getNhanvien() {
        return nhanvien;
    }

    public void setNhanvien(nhanVien nhanvien) {
        this.nhanvien = nhanvien;
    }

    public Date getNdh() {
        return ndh;
    }

    public void setNdh(Date ndh) {
        this.ndh = ndh;
    }

    public String getMathang() {
        return mathang;
    }

    public void setMathang(String mathang) {
        this.mathang = mathang;
    }

    public Integer getSoluong() {
        return soluong;
    }

    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }

    public Integer getDongia() {
        return dongia;
    }

    public void setDongia(Integer dongia) {
        this.dongia = dongia;
    }
    
}
