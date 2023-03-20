/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.OrderDetailDAO;
import entity.Cart;
import entity.OrderDetail;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckOutControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            //SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            //Date date = new Date();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
            User auth = (User) request.getSession().getAttribute("auth");            
            if (cart_list != null && auth != null) {
                for (Cart c : cart_list) {
                    OrderDetail orderDetail = new OrderDetail();                    
                    String order_id = "O" + auth.getId().substring(1);
                    orderDetail.setOid(order_id);
                    orderDetail.setId(c.getId());
                    orderDetail.setUid(auth.getId());
                    orderDetail.setQuantity(c.getQuantity());
                    //order.setDate(formatter.format(date));

                    OrderDetailDAO oDao = new OrderDetailDAO();
                    int amount = c.getQuantity();
                    boolean result1 = oDao.decreaseAmountProduct(c.getId(), amount);
                    boolean result = oDao.insertOrderDetail(orderDetail);
                    if (!result && !result1) {
                        break;
                    }
                }
                //cart_list.clear();
                
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
        processRequest(request, response);
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
        processRequest(request, response);
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
