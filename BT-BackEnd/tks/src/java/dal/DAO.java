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
import model.User;

public class DAO extends DBContext {

    public List<User> getAll() {
        List<User> list = new ArrayList<>();
        String sql = "select * from ac";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setEmail(rs.getString("email"));
                u.setFirstName(rs.getString("firstName"));
                u.setLastName(rs.getString("lastName"));
                list.add(u);
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public User getUserByEmail(String email) {
        String sql = "select * from ac where email =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setEmail(rs.getString("email"));
                u.setFirstName(rs.getString("firstName"));
                u.setLastName(rs.getString("lastName"));
                return u;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void insert(User u) {
        String sql = "INSERT INTO [dbo].[ac]\n"
                + "           ([email]\n"
                + "           ,[firstName]\n"
                + "           ,[lastName])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getEmail());
            st.setString(2, u.getFirstName());
            st.setString(3, u.getLastName());
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void update(User u) {
        String sql = "UPDATE [dbo].[ac]\n"
                + "   SET [firstName] = ?\n"
                + "      ,[lastName] = ?\n"
                + " WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getFirstName());
            st.setString(2, u.getLastName());
            st.setString(3, u.getEmail());
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void delete(User u) {
        String sql = "DELETE FROM [dbo].[ac]\n"
                + "      WHERE email=?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getEmail());
            st.executeUpdate();
        } catch(SQLException e){
            
        }
    }
}
