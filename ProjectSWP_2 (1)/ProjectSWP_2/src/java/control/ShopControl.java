/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.AmountProduct;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class ShopControl extends HttpServlet {

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
        DAO dao = new DAO();
        //Paging
        String indexP = request.getParameter("index");
        if(indexP == null){
            indexP = "1";
        }
        int index = Integer.parseInt(indexP);
        int count = dao.getTotal();
        int endPage = count / 6;        
        if(count % 6 != 0){
            endPage++;
        }
        if(index < 1){
            index = 1;
        }else if(index > endPage){
            index = endPage;
        }
        
        //Get product by paging
        List<Product> listP = new ArrayList<>();
        listP = dao.pagingProduct(index);                
        request.setAttribute("listP", listP);
        request.setAttribute("endP", endPage);
        request.setAttribute("index", index);
        //Create a var to check is HomeControl
        String isPage = "HomeShop";
        request.setAttribute("isPage", isPage);
        //Get category
        List<Category> listCate = new ArrayList<>();
        listCate = dao.getCategorys();
        request.setAttribute("listCate", listCate);
        //Get total product in each categor
        List<AmountProduct> listAmountProducts = new ArrayList<>();
        listAmountProducts = dao.getAmountProducts();
        request.setAttribute("listAmountProducts", listAmountProducts);

        
        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
