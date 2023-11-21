/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
//create table sanpham(
//	[id] [varchar](5) primary key,
//	[tensp] [nvarchar](255),
//	[manhinh] [nvarchar](255),
//	[cpu] [nvarchar](255),
//	[ram] [nvarchar](100),
//	[ocung] [nvarchar](100),
//	[dohoa] [nvarchar](255),
//	[hdh] [nvarchar](255),
//	[trongluong] [varchar](4),
//	[kichthuoc] [varchar] (50),
//	[xuatxu] [nvarchar](255),
//	[nam] [int],
//	[giaban] [float],
//	[soluong] [int],
//	[loai] [nvarchar] (100),
//	[hang] [varchar](10),
//	[img1] [varchar](20),
//	[img2] [varchar](20),
//	[img3] [varchar](20),
//);
public class SanPham {
    private String id, tensp,manhinh,cpu,ram,ocung,dohoa,hdh,trongluong,kichthuoc,xuatxu;
    private int nam;
    private Double giaban;
    private int soluong;
    private String loai,hang,img1,img2,img3;

    public SanPham() {
    }

    public SanPham(String id, String tensp, String manhinh, String cpu, String ram, String ocung, String dohoa, String hdh, String trongluong, String kichthuoc, String xuatxu, int nam, Double giaban, int soluong, String loai, String hang, String img1, String img2, String img3) {
        this.id = id;
        this.tensp = tensp;
        this.manhinh = manhinh;
        this.cpu = cpu;
        this.ram = ram;
        this.ocung = ocung;
        this.dohoa = dohoa;
        this.hdh = hdh;
        this.trongluong = trongluong;
        this.kichthuoc = kichthuoc;
        this.xuatxu = xuatxu;
        this.nam = nam;
        this.giaban = giaban;
        this.soluong = soluong;
        this.loai = loai;
        this.hang = hang;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getOcung() {
        return ocung;
    }

    public void setOcung(String ocung) {
        this.ocung = ocung;
    }

    public String getDohoa() {
        return dohoa;
    }

    public void setDohoa(String dohoa) {
        this.dohoa = dohoa;
    }

    public String getHdh() {
        return hdh;
    }

    public void setHdh(String hdh) {
        this.hdh = hdh;
    }

    public String getTrongluong() {
        return trongluong;
    }

    public void setTrongluong(String trongluong) {
        this.trongluong = trongluong;
    }

    public String getKichthuoc() {
        return kichthuoc;
    }

    public void setKichthuoc(String kichthuoc) {
        this.kichthuoc = kichthuoc;
    }

    public String getXuatxu() {
        return xuatxu;
    }

    public void setXuatxu(String xuatxu) {
        this.xuatxu = xuatxu;
    }

    public int getNam() {
        return nam;
    }

    public void setNam(int nam) {
        this.nam = nam;
    }

    public Double getGiaban() {
        return giaban;
    }

    public void setGiaban(Double giaban) {
        this.giaban = giaban;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public String getHang() {
        return hang;
    }

    public void setHang(String hang) {
        this.hang = hang;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }
    
}
