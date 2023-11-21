/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.SanPham;

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
public class SanPhamDAO extends DBContext {

    public List<Map<String, Object>> getALL() {
        List<Map<String, Object>> list = new ArrayList<>();
        String sql = "select id,tensp,giaban,soluong,img1 from sanpham ";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Map<String, Object> map = new HashMap<>();
                map.put("id", rs.getString("id"));
                map.put("tensp", rs.getString("tensp"));
                map.put("giaban", rs.getDouble("giaban"));
                map.put("soluong", rs.getInt("soluong"));
                map.put("img1", rs.getString("img1"));
                list.add(map);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    
    public SanPham getSanPhamByID(String id){
        String sql = "select * from sanpham where id=?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return new SanPham(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), 
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), 
                        rs.getInt(12), rs.getDouble(13), rs.getInt(14), rs.getString(15), rs.getString(16), rs.getString(17), 
                        rs.getString(18), rs.getString(19));
            }
        } catch(SQLException e){
            System.out.println("Loi");
        }
        return null;
    }
    
    public List<Map<String,Object>> getSanPhamByName(String name){
        List<Map<String,Object>> list = new ArrayList<>();
        String sql = "select id,tensp,giaban,soluong,img1 from sanpham where hang = ?;";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Map<String, Object> map = new HashMap<>();
                map.put("id", rs.getString("id"));
                map.put("tensp", rs.getString("tensp"));
                map.put("giaban", rs.getDouble("giaban"));
                map.put("soluong", rs.getInt("soluong"));
                map.put("img1", rs.getString("img1"));
                list.add(map);
            }
        }
        catch(SQLException e){
            System.out.println("Loi");
        }
        return list;
    }
    
    public List<Map<String,Object>> getSanPhamByNameSP(String name){
        List<Map<String,Object>> list = new ArrayList<>();
        String sql = "select id,tensp,giaban,soluong,img1 from sanpham where tensp LIKE ?;";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%"+name+"%");
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Map<String, Object> map = new HashMap<>();
                map.put("id", rs.getString("id"));
                map.put("tensp", rs.getString("tensp"));
                map.put("giaban", rs.getDouble("giaban"));
                map.put("soluong", rs.getInt("soluong"));
                map.put("img1", rs.getString("img1"));
                list.add(map);
            }
        }
        catch(SQLException e){
            System.out.println("Loi");
        }
        return list;
    }
}
