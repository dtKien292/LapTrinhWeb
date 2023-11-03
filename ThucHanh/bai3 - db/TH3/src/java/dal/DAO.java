package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.tonKho;
import model.vatTu;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public void update(vatTu a) {
        String sql = "UPDATE [dbo].[VATTU]\n"
                + "   SET [tenvtu] = ?\n"
                + "      ,[dvtinh] = ?\n"
                + "      ,[phantram] = ?\n"
                + " WHERE [mavtu] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getTenvtu());
            st.setString(2, a.getDvtinh());
            st.setDouble(3, a.getPhantram());
            st.setString(4, a.getMavtu());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("k up");
        }
    }

    public void delete(String u) {
        String sql = "DELETE FROM [dbo].[VATTU]\n"
                + "      WHERE [mavtu]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("k dele");
        }
    }

    public void insert(vatTu a) {
        String sql = "INSERT INTO [dbo].[VATTU]\n"
                + "           ([mavtu]\n"
                + "           ,[tenvtu]\n"
                + "           ,[dvtinh]\n"
                + "           ,[phantram])\n"
                + "     VALUES (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getMavtu());
            st.setString(2, a.getTenvtu());
            st.setString(3, a.getDvtinh());
            st.setDouble(4, a.getPhantram());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("k ins");
        }
    }

    public vatTu searchVatTuByMa(String mavtu) {
        String sql = "SELECT * FROM [dbo].[VATTU] where mavtu=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mavtu);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                vatTu a = new vatTu();
                a.setMavtu(rs.getString("mavtu"));
                a.setTenvtu(rs.getString("tenvtu"));
                a.setDvtinh(rs.getString("dvtinh"));
                a.setPhantram(rs.getDouble("phantram"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println("k tim theo id dc");
        }
        return null;
    }

    public List<vatTu> getALL() {
        List<vatTu> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[VATTU]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                vatTu a = new vatTu();
                a.setMavtu(rs.getString("mavtu"));
                a.setTenvtu(rs.getString("tenvtu"));
                a.setDvtinh(rs.getString("dvtinh"));
                a.setPhantram(rs.getDouble("phantram"));
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println("k get all ");
        }
        return list;
    }

    public List<tonKho> getLN() {
        List<tonKho> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM TONKHO\n"
                + "WHERE tongslx = (SELECT MAX(tongslx) FROM TONKHO);";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                tonKho a = new tonKho();
                a.setNamthang(rs.getString("namthang"));
                vatTu vt = searchVatTuByMa(rs.getString("mavtu"));
                a.setVatu(vt);
                a.setSldau(rs.getInt("sldau"));
                a.setTongsln(rs.getInt("tongsln"));
                a.setTongslx(rs.getInt("tongslx"));
                a.setSlcuoi(rs.getInt("slcuoi"));
                list.add(a);
            }
        }
        catch(SQLException e){
            System.out.println("k sl");
        }
        return list;
    }
}
