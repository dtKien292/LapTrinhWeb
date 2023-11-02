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
import model.donHang;
import model.khachHang;
import model.nhanVien;

public class DAO extends DBContext {

    public void insert(khachHang a) {
        String sql = "insert into khachHang values (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getMaKH());
            st.setString(2, a.getNameKH());
            st.setDate(3, a.getNs());
            st.setString(4, a.getDc());
            st.setString(5, a.getEmail());
            st.setString(6, a.getDt());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("no in");
        }
    }

    public void update(khachHang a) {
        String sql = "UPDATE [dbo].[khachHang]\n"
                + "   SET [nameKH] = ?\n"
                + "      ,[ns] = ?\n"
                + "      ,[dc] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[dt] = ?\n"
                + " WHERE maKH = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getNameKH());
            st.setDate(2, a.getNs());
            st.setString(3, a.getDc());
            st.setString(4, a.getEmail());
            st.setString(5, a.getDt());
            st.setString(6, a.getMaKH());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("k u");
        }
    }

    public void delete(String s) {
        String sql = "DELETE FROM [dbo].[khachHang]\n"
                + "      WHERE maKH=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("k dele");
        }
    }

    public khachHang getKHByMa(String ma) {
        String sql = "select * from khachHang where maKH =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, ma);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                khachHang a = new khachHang();
                a.setMaKH(rs.getString("maKH"));
                a.setNameKH(rs.getString("nameKH"));
                a.setNs(rs.getDate("ns"));
                a.setDc(rs.getString("dc"));
                a.setEmail(rs.getString("email"));
                a.setDt(rs.getString("dt"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println("k get");
        }
        return null;
    }

    public List<khachHang> getAll() {
        List<khachHang> list = new ArrayList<>();
        String sql = "select * from khachHang";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                khachHang a = new khachHang();
                a.setMaKH(rs.getString("maKH"));
                a.setNameKH(rs.getString("nameKH"));
                a.setNs(rs.getDate("ns"));
                a.setDc(rs.getString("dc"));
                a.setEmail(rs.getString("email"));
                a.setDt(rs.getString("dt"));
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println("k getall");
        }
        return list;
    }

    public nhanVien getNVByMa(String ma) {
        String sql = "select * from nhanVien where maNV =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, ma);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                nhanVien a = new nhanVien();
                a.setMaNV(rs.getString("maNV"));
                a.setNameNV(rs.getString("nameNV"));
                a.setNs(rs.getDate("ns"));
                a.setDc(rs.getString("dc"));
                a.setEmail(rs.getString("email"));
                a.setDt(rs.getString("dt"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println("k get");
        }
        return null;
    }

    public List<donHang> getALLDH() {
        List<donHang> list = new ArrayList<>();
        String sql = "SELECT TOP 2 *\n"
                + "FROM donHang\n"
                + "ORDER BY (dongia * soluong) DESC;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                donHang a = new donHang();
                a.setMaHD(rs.getString("maHD"));
                khachHang kh = getKHByMa(rs.getString("maKH"));
                a.setKhachhang(kh);
                nhanVien nv = getNVByMa(rs.getString("maNV"));
                a.setNhanvien(nv);
                a.setNdh(rs.getDate("ndh"));
                a.setMathang(rs.getString("mathang"));
                a.setSoluong(rs.getInt("soluong"));
                a.setDongia(rs.getInt("dongia"));
                list.add(a);
            }
        }
        catch(SQLException e){
            System.out.println("k getall dh");
        }
        return list;
    }
}
