package control;

import entity.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class AddToCartControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            ArrayList<Cart> cartList = new ArrayList<>(); //tạo list sản phẩm trong cart
            String id = request.getParameter("id");
            Cart item = new Cart();
            item.setId(id);
            item.setQuantity(1);
            HttpSession session = request.getSession();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");  //tạo session tên cart_lít để lưu sản phẩm vào
            if (cart_list == null) { //nếu cart_list trống thì thêm sản phẩm vào cart sesion rồi quay lại trang shop  
                cartList.add(item);
                session.setAttribute("cart-list", cartList);
                response.sendRedirect("shop");
            } else {
                cartList = cart_list;

                boolean exist = false;
                for (Cart c : cart_list) { //nếu cart_list đã có sản phẩm đó rồi thì quay lại trang shop
                    if (c.getId().equals(id)) {
                        exist = true;
                        response.sendRedirect("shop");
                        //out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='cart.jsp'>GO to Cart Page</a></h3>");
                    }
                }

                if (!exist) {  //nếu cart_list chưa có sản phẩm đó thì add vào rồi quay lại trang shop
                    cartList.add(item);
                    response.sendRedirect("shop");
                }
            }
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
