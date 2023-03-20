/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.AmountProduct;
import entity.Cart;
import entity.Category;
import entity.DoanhthubyYear;
import entity.Doanhthuthang;
import entity.Image;
import entity.Order;
import entity.OrderDetail;
import entity.OrderhistoryUser;
import entity.Product;
import entity.Revenue6month;
import entity.RevenueWeek;
import entity.SaleofWeek;
import entity.ShipppingMethod;
import entity.Storage;
import entity.ToTalOrderandPrice;
import entity.Top5Products;
import entity.UserBestSell;
import entity.sale6month;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProducts() {
        try {
            String query = "Select * from product where amount > 0";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop3() {
        try {
            String query = "SELECT TOP 3 * FROM dbo.Product where amount > 0 \n"
                    + "ORDER BY product_id DESC";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Category> getCategorys() {
        try {
            String query = "SELECT * FROM dbo.Category";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Category> list = new ArrayList<>();
            while (rs.next()) {
                Category cate = new Category(rs.getString(1), rs.getString(2), rs.getString(3));
                list.add(cate);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public int getTotal() {
        String query = "SELECT COUNT(product_id) FROM dbo.Product where amount > 0";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int getTotalCate(String cate_id) {
        String query = "SELECT COUNT(product_id) FROM dbo.Product WHERE category_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cate_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product where amount > 0 ORDER BY product_id OFFSET ? ROW FETCH NEXT 6 ROW ONLY";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public List<Product> pagingProductShop(int index, String cate_id) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE category_id=? and amount > 0 ORDER BY product_id OFFSET ? ROW FETCH NEXT 6 ROW ONLY";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cate_id);
            ps.setInt(2, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE name LIKE ? and amount > 0";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            if (txtSearch == "") {
                ps.setString(1, txtSearch);
            } else {
                ps.setString(1, "%" + txtSearch + "%");
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                while (rs.next()) {
                    Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                            rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                    list.add(p);
                }
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "select * from Product\n"
                + "where product_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Image> getImages() {
        String query = "select * from Image";
        List<Image> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Image i = new Image(rs.getString(1), rs.getString(2), rs.getString(3));
                list.add(i);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Image> getImageByID(String id) {
        String query = "select * from Image\n"
                + "where product_id = ?";
        List<Image> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Image i = new Image(rs.getString(1), rs.getString(2), rs.getString(3));
                list.add(i);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<>();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    String query = "select * from Product where product_id=?";
                    conn = new DBContext().getConnection();
                    ps = conn.prepareStatement(query);
                    ps.setString(1, item.getId());
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getString("product_id"));
                        row.setImage(rs.getString("img"));
                        row.setName(rs.getString("name"));
                        row.setPrice(rs.getDouble("unit_price") * item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }

                }
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return products;
    }

    public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    String query = "select unit_price from Product where product_id=?";
                    conn = new DBContext().getConnection();
                    ps = this.conn.prepareStatement(query);
                    ps.setString(1, item.getId());
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        sum += rs.getDouble("unit_price") * item.getQuantity();
                    }

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }

    public Product getSingleProduct(String id) {
        Product row = null;
        try {
            String query = "select * from Product where product_id=? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                row = new Product();
                row.setId(rs.getString("product_id"));
                row.setName(rs.getString("name"));
                row.setPrice(rs.getDouble("unit_price"));
                row.setImage(rs.getString("img"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return row;
    }

    public List<Product> getProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                ));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }

    public void insertProduct(String product_id, String name, String unit_price, String amount, String description, String category_id, String img) {
        String query = "insert into Product values (?,?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, product_id);
            ps.setString(2, name);
            ps.setString(3, unit_price);
            ps.setString(4, amount);
            ps.setString(5, description);
            ps.setString(6, category_id);
            ps.setString(7, img);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void updateProduct(String product_id, String name, String unit_price, String amount, String description, String category_id, String img) {
        String query = "update [Product] set product_id=?,name=?, unit_price=?,amount=?,description=?,category_id=?,img=?\n"
                + "where product_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product_id);
            ps.setString(2, name);
            ps.setString(3, unit_price);
            ps.setString(4, amount);
            ps.setString(5, description);
            ps.setString(6, category_id);
            ps.setString(7, img);
            ps.setString(8, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }

    }

    public void deleteProduct(String product_id) {
        String query = "update Product set amount = 0 where product_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);

        }
    }

    public List<Storage> getStorage() {
        List<Storage> list = new ArrayList<>();
        String query = "select * from Storage";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Storage(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                ));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }

    public void insertStorage(String manufactured_date, String imported_date, String product_id) {
        String query = "insert into Storage values (?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, manufactured_date);
            ps.setString(2, imported_date);
            ps.setString(3, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Storage getStorageByID(String id) {
        String query = "SELECT * FROM dbo.Storage WHERE storage_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Storage book = new Storage(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                );
                return book;
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return null;
    }

    public void updateStorage(String id, String manufactured_date, String imported_date, String product_id) {
        String query = "update [Storage] set manufaturer=?, importedDate=?, product_id =?\n"
                + "where storage_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, manufactured_date);
            ps.setString(2, imported_date);
            ps.setString(3, product_id);
            ps.setString(4, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }

    }

    public void deleteStorage(String id) {
        String query = "delete from Storage where storage_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);

        }
    }

    public List<Category> getCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Category(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)
                ));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Order> getOrder() {
        List<Order> list = new ArrayList<>();
        String query = "select * from [Order]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDetail> getListOrderDetails() {
        List<OrderDetail> list = new ArrayList<>();
        String query = "select * from Order_detail";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderDetail(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getListProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void getCancelOrder(String id) {
        String query = "delete from [Order]\n"
                + "where order_id = ?";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query); // quang cau lenh vao sql
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public String getTotalProduct() {
        String query = "select count(product_id)\n"
                + "from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String getTotalCategory() {
        String query = "select count(cate_id)\n"
                + "from Category ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String getTotalOrder() {
        String query = "select count(order_id)\n"
                + "from [Order]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String getTotalOrderDetail() {
        String query = "select count(order_id)\n"
                + "from Order_detail";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String getCustomers() {
        String query = "select count([user_id])\n"
                + "from [User]\n"
                + "where role_id ='R1'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String GetTotalOrderinDay() {
        String query = "select Sum(total_price)\n"
                + "from [Order]\n"
                + "where [date] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<ToTalOrderandPrice> getTotalOrderandPrice() {
        List<ToTalOrderandPrice> list = new ArrayList<>();
        String query = "select [date] as Date_Order,count(quantity) as Total_order,sum(quantity) as total_product_order, sum(total_price) as Total_price\n"
                + "from [Order]\n"
                + "inner join Order_detail\n"
                + "on [Order].order_id = Order_detail.order_id\n"
                + "group by([date])";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ToTalOrderandPrice(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getFloat(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String getProduct_id() {
        String id = "";
        try {
            String query = "select top(1) product_id from [dbo].[Product] ORDER BY product_id desc";
            conn = new DBContext().getConnection();
            ps = this.conn.prepareStatement(query);

            rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public List<Top5Products> getTop5Products() {
        List<Top5Products> list = new ArrayList<>();
        String query = "select top 5 [name], sum(quantity) as total_sales  \n"
                + "from Order_detail\n"
                + "inner join Product\n"
                + "on Order_detail.product_id= Product.product_id\n"
                + "group by [name] order by total_sales desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Top5Products(rs.getString(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<AmountProduct> getAmountProducts() {
        String query = "select category_id, sum(amount) as total from Product group by category_id";
        List<AmountProduct> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                AmountProduct amount = new AmountProduct(rs.getString(1), rs.getInt(2));
                list.add(amount);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductNameAsc() {
        try {
            String query = "select * from Product where amount > 0 Order By [name] asc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductNameDesc() {
        try {
            String query = "select * from Product where amount > 0 Order By [name] desc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductPriceAsc() {
        try {
            String query = "select * from Product where amount > 0 Order By unit_price asc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductPriceDesc() {
        try {
            String query = "select * from Product where amount > 0 Order By unit_price desc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),
                        rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(p);

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<DoanhthubyYear> getSalebyYear() {
        List<DoanhthubyYear> list = new ArrayList<>();
        String query = "SELECT YEAR(date) AS nam, SUM(total_price) AS doanh_thu\n"
                + "FROM [Order]\n"
                + "GROUP BY YEAR(date)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DoanhthubyYear(rs.getInt(1), rs.getDouble(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public List<Year> getYear() {
//        List<Year> list = new ArrayList<>();
//        String query = "select YEAR(date) AS Year\n"
//                + "from [Order]\n"
//                + "group by YEAR(date)\n"
//                + "order by YEAR(date) desc ";
//        try {
//            conn = new DBContext().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Year(rs.getInt(1)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public List<Doanhthuthang> getDoanhthuthang(String year) {
        List<Doanhthuthang> list = new ArrayList<>();
        String query = "SELECT YEAR(date) as Nam, MONTH(date) AS Thang, SUM(total_price) AS DoanhThu\n"
                + "FROM [Order]\n"
                + "WHERE YEAR(date) = ?\n"
                + "GROUP BY MONTH(date),YEAR(date)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, year);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Doanhthuthang(rs.getString(1), rs.getString(2), rs.getDouble(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<SaleofWeek> getSaleofWeek() {
        List<SaleofWeek> list = new ArrayList<>();
        String query = "SELECT top 5 [name], SUM(quantity) AS TotalQuantity\n"
                + "FROM  Order_detail\n"
                + "INNER JOIN [Order] ON Order_detail.order_id = [Order].order_id\n"
                + "INNER JOIN Product ON Order_detail.product_id = Product.product_id\n"
                + "WHERE MONTH([date]) = MONTH(GETDATE()) AND YEAR([date]) = YEAR(GETDATE())\n"
                + "GROUP BY [name] order by SUM(quantity) desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SaleofWeek(rs.getString(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<RevenueWeek> getRevenueWeek() {
        List<RevenueWeek> list = new ArrayList<>();
        String query = "SELECT top 5 [name], SUM(quantity*total_price) AS TotalQuantity\n"
                + "FROM  Order_detail\n"
                + "INNER JOIN [Order] ON Order_detail.order_id = [Order].order_id\n"
                + "INNER JOIN Product ON Order_detail.product_id = Product.product_id\n"
                + "WHERE MONTH([date]) = MONTH(GETDATE()) AND YEAR([date]) = YEAR(GETDATE())\n"
                + "GROUP BY [name] order by SUM(quantity) desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new RevenueWeek(rs.getString(1), rs.getDouble(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<sale6month> getSale6month() {
        List<sale6month> list = new ArrayList<>();
        String query = "SELECT top 5 [name], SUM(quantity) AS total_sales\n"
                + "FROM Order_detail\n"
                + "inner join [Order] on Order_detail.order_id = [Order].order_id\n"
                + "inner join Product on Order_detail.product_id = Product.product_id\n"
                + "WHERE [date] BETWEEN DATEADD(month, -6, GETDATE()) AND GETDATE()\n"
                + "GROUP BY [name]\n"
                + "ORDER BY total_sales DESC;";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new sale6month(rs.getString(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<sale6month> getLastSale6month() {
        List<sale6month> list = new ArrayList<>();
        String query = "SELECT top 5 [name], SUM(quantity) AS TotalSold\n"
                + "FROM Order_detail\n"
                + "inner join [Order] on Order_detail.order_id = [Order].order_id\n"
                + "inner join Product on Order_detail.product_id = Product.product_id\n"
                + "WHERE [date] >= DATEADD(month, -6, GETDATE())\n"
                + "GROUP BY [name]\n"
                + "ORDER BY TotalSold ASC;\n"
                + "";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new sale6month(rs.getString(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Revenue6month> getRevenue6month() {
        List<Revenue6month> list = new ArrayList<>();
        String query = "SELECT TOP 5 [name], SUM(quantity*total_price) AS TotalRevenue\n"
                + "FROM Order_detail\n"
                + "inner join [Order] on Order_detail.order_id = [Order].order_id\n"
                + "inner join Product on Order_detail.product_id = Product.product_id\n"
                + "WHERE [date] >= DATEADD(month, -6, GETDATE())\n"
                + "GROUP BY [name]\n"
                + "ORDER BY TotalRevenue DESC"
                + "";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Revenue6month(rs.getString(1), rs.getDouble(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<UserBestSell> getUserBestSell() {
        List<UserBestSell> list = new ArrayList<>();
        String query = "SELECT c.user_id,c.username,c.email,c.phone, COUNT(*) AS total_products_purchased\n"
                + "FROM [Order] o\n"
                + "INNER JOIN Order_detail oi ON o.order_id = oi.order_id\n"
                + "INNER JOIN [User] c ON o.user_id = c.user_id\n"
                + "GROUP BY c.user_id,c.username,c.email,c.phone\n"
                + "ORDER BY total_products_purchased DESC";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserBestSell(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderhistoryUser> getOrderhistory(String uid) {
        List<OrderhistoryUser> list = new ArrayList<>();
        String query = "SELECT o.[date],p.[name], p.img, od.quantity, o.[address], o.total_price, o.[Status]\n"
                + "FROM Order_detail as od\n"
                + "INNER JOIN Product as p ON od.product_id = p.product_id\n"
                + "INNER JOIN [Order] as o  ON od.order_id = o.order_id\n"
                + "where od.[user_id] = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            rs = ps.executeQuery();
            while (rs.next()) {
                while (rs.next()) {
                    list.add(new OrderhistoryUser(rs.getString(1), rs.getString(2), rs.getString(3),
                            rs.getInt(4), rs.getString(5), rs.getDouble(6), rs.getString(7)));
                }
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Orderlist> getOrderList() {
        List<Orderlist> list = new ArrayList<>();
        String query = "select Order_detail.[user_id] ,Order_detail.[order_id], quantity,total_price, shopping_method\n"
                + "from Order_detail\n"
                + "INNER JOIN [Order] ON Order_detail.order_id = [Order].order_id";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Orderlist(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ShipppingMethod> getShippingMethod() {
        try {
            String query = "select * from Shipping_Method";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<ShipppingMethod> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new ShipppingMethod(rs.getInt(1), rs.getString(2)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        String id = "U028";
//        List<OrderhistoryUser> list = dao.getOrderhistory(id);
//        for (OrderhistoryUser o : list) {
//            System.out.println(o);
//        }
        List<Orderlist> list = dao.getOrderList();
        for (Orderlist o : list) {
            System.out.println(o);
        }
    }
}
