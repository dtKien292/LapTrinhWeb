/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Item;
import model.Order;
import model.user;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext {

    public void addOrder(user u, Cart cart, String hoten, String diachi, String sdt) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        String trangthai = "Đang chờ được duyệt";
        try {
            String sql = "insert into [order] values (?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getAccount());
            st.setString(2, date);
            st.setDouble(3, cart.getTotalMoney());
            st.setString(4, hoten);
            st.setString(5, diachi);
            st.setString(6, sdt);
            st.setString(7, trangthai);
            st.executeUpdate();
            String sql1 = "select top 1 id from [Order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            // them vao order line
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [OrderLine] values (?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setString(2, i.getSanpham().getId());
                    st2.setInt(3, i.getSoluong());
                    st2.setDouble(4, i.getGia());
                    st2.executeUpdate();
                }

//                for (Item i : cart.getItems()) {
//                    String sql3 = "UPDATE [dbo].[sanpham]\n"
//                            + "   SET soluong = ?\n"
//                            + " WHERE id = ?;";
//                    PreparedStatement st3 = connection.prepareStatement(sql3);
//                    st3.setInt(1, i.getSanpham().getSoluong()-i.getSoluong() );
//                    st3.setString(2, i.getSanpham().getId());
//                    st3.executeUpdate();
//                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<Order> getHoaDonByID(String ac){
        List<Order> list = new ArrayList<>();
        String sql = "select * from [Order] where uid = ? order by id DESC ;";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, ac);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), 
                        rs.getString(7), rs.getString(8));
                list.add(o);
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
}
