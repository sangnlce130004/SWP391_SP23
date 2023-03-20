/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import dao.UserDAO;
import entity.ActivitiesInfor;
import entity.DoanhthubyYear;
import entity.Product;
import entity.Revenue6month;
import entity.RevenueWeek;
import entity.SaleofWeek;
import entity.ToTalOrderandPrice;
import entity.Top5Products;
import entity.UserBestSell;
import entity.sale6month;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author HP
 */
@WebServlet(name = "countTotalProduct", urlPatterns = {"/countTotalProduct"})
public class countTotal extends HttpServlet {

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
        UserDAO userdao = new UserDAO();
       
                
        // dua product len pie chart
        List<Product> list = dao.getListProduct();
        request.setAttribute("ListP", list);

        //total order and price
        List<ToTalOrderandPrice> list2 = dao.getTotalOrderandPrice();
        request.setAttribute("ListOandP", list2);

        //get top 5 products
        List<Top5Products> listTop = dao.getTop5Products();
        request.setAttribute("ListTop5", listTop);

//        // line chart
//        String T = dao.GetTotalOrderinDay();
        // dem product
        String p = dao.getTotalProduct();
        // dem Category
        String c = dao.getTotalCategory();
        // dem total order
        String totalO = dao.getTotalOrderDetail();
        // dem total customers
        String totalC = dao.getCustomers();
        // dem activities
        int totalActi = userdao.getActivities();
        request.setAttribute("acti", totalActi);
        // sale of week
        List<SaleofWeek> listSoW = dao.getSaleofWeek();
        request.setAttribute("listSW", listSoW);
        //lay infor user in week
        List<ActivitiesInfor> listInfor = userdao.getInforacti();
        request.setAttribute("ListInfo", listInfor);
        //lay doanh thu nam
        List<DoanhthubyYear> listYear = dao.getSalebyYear();
        request.setAttribute("ListSale", listYear);
        
        // lay sale 6 month
        List<sale6month> list6month = dao.getSale6month();
        request.setAttribute("List6month", list6month);
        // lay it nhat 6 thang
        
        List<sale6month> listlast6 = dao.getLastSale6month();
        request.setAttribute("Listlast6", listlast6);
        
        //lay doanh thu cao nhat 6 thang 
        List<Revenue6month> listcao6 = dao.getRevenue6month();
        request.setAttribute("List6Cao", listcao6);
        
        //
        List<RevenueWeek> listRw = dao.getRevenueWeek();
        request.setAttribute("ListRw", listRw);
        
        //
        List<UserBestSell> listUserBest = dao.getUserBestSell();
        request.setAttribute("ListUserbest", listUserBest);
        
        request.setAttribute("TotalP", p);
        request.setAttribute("TotalC", c);
        request.setAttribute("totalO", totalO);
        request.setAttribute("totalCus", totalC);
        request.getRequestDispatcher("Admin_DashBoard.jsp").forward(request, response);
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
