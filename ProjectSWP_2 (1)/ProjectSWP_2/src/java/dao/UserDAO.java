package dao;

import context.DBContext;
import entity.ActivitiesInfor;
import entity.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public User login(String email, String password) {
        User user = null;
        try {
            String query = "select * from [User] where email=? and password=?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getString(1));
                user.setName(rs.getString(2));
                user.setPassword(rs.getString(4));
                user.setEmail(rs.getString(3));
                user.setPhone(rs.getString(5));
                user.setRole_id(rs.getString(6));
            }
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
        return user;
    }

    public void logup(String id,String name, String pass, String email, String phone) {
        String query = "INSERT INTO [User] VALUES (?, ?, ?, ?, ?,?)";
        String role = "R1";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, pass);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, role);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public User checkExistedAccount(String email) {
        String query = "SELECT * FROM [User]\n"
                + "WHERE Email = ?\n";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int getActivities() {
        String query = "SELECT COUNT(DISTINCT username) as active_customers\n"
                + "FROM [Order]\n"
                + "inner join [User] on [Order].user_id = [User].user_id\n"
                + "WHERE [date] >= DATEADD(wk, DATEDIFF(wk,0,GETDATE()), 0) \n"
                + "AND [date] < DATEADD(wk, DATEDIFF(wk,0,GETDATE()), 7)\n"
                + "AND role_id ='R1'";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<ActivitiesInfor> getInforacti() {
        List<ActivitiesInfor> list = new ArrayList<>();
        String query = "SELECT username,email,phone\n"
                + "FROM [Order]\n"
                + "inner join [User]\n"
                + "on [Order].user_id = [User].user_id\n"
                + "WHERE [date] >= DATEADD(wk, DATEDIFF(wk,0,GETDATE()), 0) \n"
                + "AND [date] < DATEADD(wk, DATEDIFF(wk,0,GETDATE()), 7)\n"
                + "group by username,email,phone";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ActivitiesInfor(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
