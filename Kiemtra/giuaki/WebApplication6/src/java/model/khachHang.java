/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

//[maKH] [varchar](3),

import java.sql.Date;

//	[nameKH] [nvarchar](255),
//	[ns] [date],
//	[dc] [nvarchar](255),
//	[email] [varchar](255),
//	[dt] [varchar](11)
public class khachHang {
    private String maKH,nameKH;
    private Date ns;
    private String dc,email,dt;

    public khachHang() {
    }

    public khachHang(String maKH, String nameKH, Date ns, String dc, String email, String dt) {
        this.maKH = maKH;
        this.nameKH = nameKH;
        this.ns = ns;
        this.dc = dc;
        this.email = email;
        this.dt = dt;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getNameKH() {
        return nameKH;
    }

    public void setNameKH(String nameKH) {
        this.nameKH = nameKH;
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
