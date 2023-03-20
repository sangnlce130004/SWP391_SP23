package control;

import dao.DAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import entity.Cart;
import entity.Order;
import entity.OrderDetail;
import entity.ShipppingMethod;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            //SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            //Date date = new Date();
            DAO dao = new DAO();
            List<ShipppingMethod> list = dao.getShippingMethod();
            request.setAttribute("ListShip", list);
            request.getRequestDispatcher("order.jsp").forward(request, response);
            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
            User auth = (User) request.getSession().getAttribute("auth");            
            if (cart_list != null && auth != null) {
                response.sendRedirect("order.jsp");
            } else {
                if (auth == null) {
                    response.sendRedirect("login.jsp");
                }
                response.sendRedirect("cart.jsp");
            }
        } catch (Exception e) {

            e.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        try (PrintWriter out = response.getWriter()) {
            //Order
            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
            User auth = (User) request.getSession().getAttribute("auth");

            if (cart_list != null && auth != null) {
                Order order = new Order();
                //OrderId
                OrderDetailDAO dao = new OrderDetailDAO();       
                String order_idDao = dao.getOrder_id();
                int id = Integer.parseInt(order_idDao.substring(2).trim());
                id++;
                String order_id = order_idDao.substring(0,2) + String.valueOf(id);
                order.setOrder_id(order_id);
                order.setDate(formatter.format(date));
                order.setAddress(request.getParameter("address"));
                String price = request.getParameter("totalPrice");
                double total = Double.parseDouble(price);
                order.setTotal_price(total);
                order.setVoucher_id(null);
                order.setUser_id(auth.getId());
                order.getStatus();
                order.setShipping_method(request.getParameter("shipping_method"));
                OrderDAO orderDao = new OrderDAO();
                boolean result = orderDao.insertOrder(order);
                if (result) {
                    for (Cart c : cart_list) {
                    OrderDetail orderDetail = new OrderDetail();                    
                    orderDetail.setOid(order_id);
                    orderDetail.setId(c.getId());
                    orderDetail.setUid(auth.getId());
                    orderDetail.setQuantity(c.getQuantity());
                    //order.setDate(formatter.format(date));

                    OrderDetailDAO oDao = new OrderDetailDAO();
                    int amount = c.getQuantity();
                    boolean result1 = oDao.decreaseAmountProduct(c.getId(), amount);
                    boolean result2 = oDao.insertOrderDetail(orderDetail);
                    if (!result2 && !result1) {
                        break;
                    }
                }
                    cart_list.clear();
                    response.sendRedirect("shop");                                        
                } else {
                    out.println("Order fail");
                }
            } else {
                response.sendRedirect("login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
