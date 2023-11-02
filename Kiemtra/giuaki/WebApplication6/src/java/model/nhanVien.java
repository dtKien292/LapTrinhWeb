/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

//create table nhanVien(

import java.sql.Date;

//	[maNV] [varchar](10) primary key,
//	[nameNV] [nvarchar](255),
//	[ns] [date],
//	[dc] [nvarchar](255),
//	[email] [varchar](255),
//	[dt] [varchar](12)
//)
//go
public class nhanVien {
    private String maNV,nameNV;
    private Date ns;
    private String dc,email,dt;

    public nhanVien() {
    }

    public nhanVien(String maNV, String nameNV, Date ns, String dc, String email, String dt) {
        this.maNV = maNV;
        this.nameNV = nameNV;
        this.ns = ns;
        this.dc = dc;
        this.email = email;
        this.dt = dt;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getNameNV() {
        return nameNV;
    }

    public void setNameNV(String nameNV) {
        this.nameNV = nameNV;
    }

    public Date getNs() {
        return ns;
    }

    public void setNs(Date ns) {
        this.ns = ns;
    }

    public String getDc() {
        return dc;
    }

    public void setDc(String dc) {
        this.dc = dc;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }
    
}
