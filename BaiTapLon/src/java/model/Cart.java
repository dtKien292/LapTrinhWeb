/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Item> items ;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    public Item getItemByID(String id){
        for (Item i : items) {
            if(i.getSanpham().getId().equals(id)){
                return i;
            }
        }
        return null;
    }
    
    public int getSoLuongByID(String id){
        return getItemByID(id).getSoluong();
    }
    
    public void addItem(Item t){
        if(getItemByID(t.getSanpham().getId())!=null){
            Item i = getItemByID(t.getSanpham().getId());
            i.setSoluong(i.getSoluong()+t.getSoluong());
        }
        else {
            items.add(t);
        }
    }
    
    public void removeItem(String id){
        if(getItemByID(id)!=null){
            items.remove(getItemByID(id));
        }
    }
    
    public double getTotalMoney(){
        double t = 0;
        for (Item i : items) {
            t = t + i.getGia()*i.getSoluong();
        }
        return t;
    }
}
