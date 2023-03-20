/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Order;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class OrderDAO {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public boolean insertOrder(Order order) {
        boolean result = false;
        try {
            String query = "Insert into [Order] (order_id, [date], [address], total_price, voucher_id, [user_id],[Status],[shopping_method]) \n"
                    + "values(?,?,?,?,?,?,?,?)";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, order.getOrder_id());
            ps.setString(2, order.getDate());
            ps.setString(3, order.getAddress());
            ps.setDouble(4, order.getTotal_price());
            ps.setString(5, null);
            ps.setString(6, order.getUser_id());
            ps.setString(7, order.getStatus());
            ps.setString(8, order.getShipping_method());
            ps.executeUpdate();
            result = true;            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
}
