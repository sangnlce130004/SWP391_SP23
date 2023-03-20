/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Nguyen Thanh Quang Duy
 */
@MultipartConfig
public class updateProductControl extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String id = request.getParameter("bid");
        DAO dao = new DAO();
        Product e = dao.getProductByID(id);
        List<Category> listCate = dao.getCategory();
        request.setAttribute("listCate", listCate);
        request.setAttribute("Product",e);
        request.getRequestDispatcher("EditProduct.jsp").forward(request, response);
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
        String product_id = request.getParameter("product_id");
        String name = request.getParameter("name");
        String unit_price = request.getParameter("unit_price");
        String amount = request.getParameter("amount");
        String description = request.getParameter("description");
        String category_id = request.getParameter("category_id");
        Part part = request.getPart("photo");
            String realPath = request.getServletContext().getRealPath("/images");
            String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            
            if(!Files.exists(Paths.get(realPath))){
                Files.createDirectory(Paths.get(realPath));
            }
            String image = "images/"+filename;
            part.write(realPath+"/"+filename);
        
        DAO dao = new DAO();
        dao.updateProduct(product_id, name, unit_price, amount, description, category_id, image);
        response.sendRedirect("productControl");
        
       
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
