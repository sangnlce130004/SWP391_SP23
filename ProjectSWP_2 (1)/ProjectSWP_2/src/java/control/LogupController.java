/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import dao.UserDAO;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class LogupController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        String re_pass = request.getParameter("re-password");
        
        if(!pass.equals(re_pass)){
            request.getRequestDispatcher("logup").forward(request, response);
        }else if(name.isEmpty() || email.isEmpty() || phone.isEmpty() || pass.isEmpty() || re_pass.isEmpty()){
            request.getRequestDispatcher("logup").forward(request, response);
        }else{
            UserDAO dao = new UserDAO();
            User a = dao.checkExistedAccount(email);
            if(a == null){ //continue to signup
                int i = 30;
                String id = "U0" + Integer.toString(i);
                dao.logup(id, name, pass, email, phone);
                i++;
                response.sendRedirect("login");
            }else{ //deny to signup
                request.getRequestDispatcher("logup").forward(request, response);
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
