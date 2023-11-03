/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


public class vatTu {
    private String mavtu,tenvtu,dvtinh;
    private Double phantram;

    public vatTu() {
    }

    public vatTu(String mavtu, String tenvtu, String dvtinh, Double phantram) {
        this.mavtu = mavtu;
        this.tenvtu = tenvtu;
        this.dvtinh = dvtinh;
        this.phantram = phantram;
    }

    public String getMavtu() {
        return mavtu;
    }

    public void setMavtu(String mavtu) {
        this.mavtu = mavtu;
    }

    public String getTenvtu() {
        return tenvtu;
    }

    public void setTenvtu(String tenvtu) {
        this.tenvtu = tenvtu;
    }

    public String getDvtinh() {
        return dvtinh;
    }

    public void setDvtinh(String dvtinh) {
        this.dvtinh = dvtinh;
    }

    public Double getPhantram() {
        return phantram;
    }

    public void setPhantram(Double phantram) {
        this.phantram = phantram;
    }
    
}
