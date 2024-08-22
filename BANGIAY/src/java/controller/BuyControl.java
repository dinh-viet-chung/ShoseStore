/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Item;
import model.product;

/**
 *
 * @author HP
 */
public class BuyControl extends HttpServlet {

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
        
        int id = Integer.parseInt(request.getParameter("id"));
        String quan = request.getParameter("quan");
        
        int quantity = 1;
        if(quan!=null){
            try {
                quantity=Integer.parseInt(quan);
            } catch (Exception e) {
            }
        }
        ProductDAO pd = new ProductDAO();
        product p = pd.getProductByid(id);
        HttpSession session = request.getSession();
        ArrayList<Item> list = (ArrayList<Item>) session.getAttribute("list");
        Item item1 = new Item(id, p, quantity, p.getPrice());
        boolean flag = false;
        
        if (list == null) {
            
            list = new ArrayList<>();
            
            list.add(item1);
            session.setAttribute("list", list);
        } else {
            for (Item item : list) {
                if (id == item.getId()) {
                    int quan1= item.getQuantity()+1;
                    item.setQuantity(quan1);
                    flag = true;
                }
            }
            if (!flag) {
//                Item item = new Item(id, p, quantity, p.getPrice());
                list.add(item1);
                flag = false;
            }
        }
        double total=0;
        for (Item item : list) {
            double price = item.getQuantity()*item.getPrice();
            total+=price;
                    
        }
        session.setAttribute("total", total);
        session.setAttribute("list", list);
        session.setAttribute("quantity", quantity);
        request.setAttribute("p", p);
        request.getRequestDispatcher("cart.jsp").forward(request, response);

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
//        DAO da = new DAO();       
//        String id = request.getParameter("id");
//        product pr = da.getProductByid(id);
//        request.setAttribute("list", pr);        
//        request.getRequestDispatcher("cart.jsp").forward(request, response);
//        HttpSession session =request.getSession(true);
//        Cart cart = null;
//        Object o =session.getAttribute("cart");
//        //co roi
//        if (o!=null) {
//            cart = (Cart) o;
//        }else{
//            cart = new Cart();
//        }
//        
//        String id_raw = request.getParameter("id");
//        int id=0;
//        try {
//            
//            id = Integer.parseInt(id_raw);
//            ProductDAO pd = new ProductDAO();
//            product p = pd.getProductByid(id_raw);
//            Item i = new Item(p, 1, p.getPrice());
//            cart.addItem(i);
//          
//        } catch (Exception e) {
//            
//        }
//        // total price
//        List<Item> list = cart.getItems();
//         double price = 0;
//
//        if(!list.isEmpty()){
//                      for (Item item : list) {
//            price += item.getPrice();
//        }
//            
//        }
//      
//  
//        session.setAttribute("price", price);
//        session.setAttribute("cart", cart);
//        session.setAttribute("listSize", list.size());
//        session.setAttribute("list", list);
//        //session.setMaxInactiveInterval(10);
//           request.getRequestDispatcher("cart.jsp").forward(request, response);
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
