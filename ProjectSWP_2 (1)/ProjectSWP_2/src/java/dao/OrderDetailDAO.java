package dao;

import context.DBContext;
import entity.OrderDetail;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class OrderDetailDAO {
    Connection con = null;
    String query;
    PreparedStatement ps;
    ResultSet rs;

    public boolean insertOrderDetail(OrderDetail orderDetail) {
        boolean result = false;
        try {
            query = "Insert into Order_detail (quantity, order_id, product_id, [user_id]) values(?,?,?,?)";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, orderDetail.getQuantity());
            ps.setString(2, orderDetail.getOid());
            ps.setString(3, orderDetail.getId());
            ps.setString(4, orderDetail.getUid());
            ps.executeUpdate();
            result = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

    public void cancelOrder(String id) {
        //boolean result = false;
        try {
            query = "delete from Order_detail where order_id=?";
            con = new DBContext().getConnection();
            ps = this.con.prepareStatement(query);
            ps.setString(1, id);
            ps.execute();
            //result = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
    
    public void decreaseAmount(String id) {
        //boolean result = false;
        try {
            query = "UPDATE Product SET amount = amount - 1 WHERE product_id = ?";
            con = new DBContext().getConnection();
            ps = this.con.prepareStatement(query);
            ps.setString(1, id);
            ps.execute();
            //result = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
    
    public boolean decreaseAmountProduct(String id, int amount) {
        boolean result = false;
        try {
            query = "UPDATE Product SET amount = amount - ? WHERE product_id = ?";
            con = new DBContext().getConnection();
            ps = this.con.prepareStatement(query);
            ps.setInt(1, amount);
            ps.setString(2, id);
            ps.execute();
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        return result;
    }
    
    
    
    public List<OrderDetail> userOrders(String id) {
        List<OrderDetail> list = new ArrayList<>();
        try {
            query = "select * from Order_detail where [user_id]=? order by Order_detail.order_id desc";
            con = new DBContext().getConnection();
            ps = this.con.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail order = new OrderDetail();
                DAO productDao = new DAO();
                String pId = rs.getString("product_id");
                Product product = productDao.getSingleProduct(pId);
                order.setOid(rs.getString("order_id"));
                order.setId(pId);
                order.setName(product.getName());
                order.setPrice(product.getPrice()*rs.getInt("quantity"));
                order.setQuantity(rs.getInt("quantity"));
                order.setDate(rs.getString("date"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }
    
    public String getOrder_id(){
        String id = "";
        try {
            query = "select top(1) order_id from [dbo].[Order] ORDER BY order_id desc";
            con = new DBContext().getConnection();
            ps = this.con.prepareStatement(query);
           
            rs = ps.executeQuery();
            while(rs.next()){
                id = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }
    
    public String getProduct_id(){
        String id = "";
        try {
            query = "select top(1) order_id from [dbo].[Order] ORDER BY order_id desc";
            con = new DBContext().getConnection();
            ps = this.con.prepareStatement(query);
           
            rs = ps.executeQuery();
            while(rs.next()){
                id = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }
    
    public static void main(String[] args) {
        OrderDetailDAO dao = new OrderDetailDAO();
        System.out.println(dao.getOrder_id());
    }
}
