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
public class FilterCategory extends HttpServlet {

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
        DAO dao = new DAO();
        //Paging
        String cate_id = request.getParameter("cate_id");
        String indexP = request.getParameter("index");
        if(indexP == null){
            indexP = "1";
        }
        int index = Integer.parseInt(indexP);
        int count = dao.getTotalCate(cate_id);
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
        listP = dao.pagingProductShop(index, cate_id);                
        request.setAttribute("listP", listP);
        request.setAttribute("endP", endPage);
        request.setAttribute("index", index);
        //Create a var to check is HomeControl
        String isPage = "CateShop";
        request.setAttribute("isPage", isPage);
        request.setAttribute("cate_id", cate_id);
        //Get category
        List<Category> listCate = new ArrayList<>();
        listCate = dao.getCategorys();
        request.setAttribute("listCate", listCate);

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
