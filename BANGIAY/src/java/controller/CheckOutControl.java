/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Item;
import model.Orders;
import org.apache.tomcat.jni.SSLContext;

/**
 *
 * @author HP
 */
public class CheckOutControl extends HttpServlet {

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
        
        HttpSession session = request.getSession();
        double total = (double)session.getAttribute("total");
        String Fname = request.getParameter("idUser");
        String name = request.getParameter("name");
        String phoneO = request.getParameter("phone");
        String DateO = request.getParameter("date");
        String AddO = request.getParameter("add");
        String chooseO = request.getParameter("sell");
        String emailO = request.getParameter("email");

         DAO d = new DAO();
        OrderDAO od = new OrderDAO();
        Account a = (Account) session.getAttribute("acc");
//        ArrayList<Item> listItem = new ArrayList<>();
//        listItem = (ArrayList<Item>) session.getAttribute("cart");
        int idUser = 0;
        try {
            idUser=Integer.parseInt(Fname);
        } catch (Exception e) {
        }
        
        Orders o = new Orders(DateO, idUser,total, phoneO, AddO,chooseO,emailO);
        String ms ="";
        
             boolean check = od.insertOrders(DateO, idUser, total, phoneO, AddO,chooseO,emailO);
        
                
       
        if(check==true){
            ms+="Successful!";
            request.setAttribute("ms", ms);
        } 
        request.setAttribute("f", Fname);
        request.setAttribute("n", name);
        request.setAttribute("p", phoneO);
        request.setAttribute("d", DateO);
        request.setAttribute("a", AddO);
                session.setAttribute("as", total);

        session.setAttribute("lo", a);
        request.setAttribute("o", o);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
        
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
