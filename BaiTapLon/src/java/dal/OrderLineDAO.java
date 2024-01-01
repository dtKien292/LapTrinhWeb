/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.OrderLine;

/**
 *
 * @author Admin
 */
public class OrderLineDAO extends DBContext{
    
    public List<OrderLine> getHoaDonChiTiet(int oid){
        List<OrderLine> list = new ArrayList<>();
        String sql = "select * from [OrderLine] where oid = ? order by oid DESC;";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, oid);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                OrderLine o = new OrderLine(oid, rs.getString(2), rs.getInt(3), rs.getDouble(4));
                list.add(o);
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
}
