/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


public class tonKho {
    private String namthang;
    private vatTu vatu;
    private int sldau,tongsln,tongslx,slcuoi;

    public tonKho() {
    }

    public tonKho(String namthang, vatTu vatu, int sldau, int tongsln, int tongslx, int slcuoi) {
        this.namthang = namthang;
        this.vatu = vatu;
        this.sldau = sldau;
        this.tongsln = tongsln;
        this.tongslx = tongslx;
        this.slcuoi = slcuoi;
    }

    public String getNamthang() {
        return namthang;
    }

    public void setNamthang(String namthang) {
        this.namthang = namthang;
    }

    public vatTu getVatu() {
        return vatu;
    }

    public void setVatu(vatTu vatu) {
        this.vatu = vatu;
    }

    public int getSldau() {
        return sldau;
    }

    public void setSldau(int sldau) {
        this.sldau = sldau;
    }

    public int getTongsln() {
        return tongsln;
    }

    public void setTongsln(int tongsln) {
        this.tongsln = tongsln;
    }

    public int getTongslx() {
        return tongslx;
    }

    public void setTongslx(int tongslx) {
        this.tongslx = tongslx;
    }

    public int getSlcuoi() {
        return slcuoi;
    }

    public void setSlcuoi(int slcuoi) {
        this.slcuoi = slcuoi;
    }
    
}
