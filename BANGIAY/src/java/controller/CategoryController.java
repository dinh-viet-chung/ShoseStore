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
import java.util.List;
import model.Category;
import model.product;

/**
 *
 * @author HP
 */
public class CategoryController extends HttpServlet {

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
        ProductDAO objP = new ProductDAO();
        DAO obj = new DAO();
//        List<product> list = objP.getAll();
//        request.setAttribute("listP", list);// đẩy sản phẩm
        List<Category> listc = obj.getAllCategory();
        request.setAttribute("listc", listc); //đẩy loại sản phẩm
//       String cateID = request.getParameter("id");//lấy id của loại sp
//      List<product> lis = objP.getProductByCid(cateID);
//      request.setAttribute("listP", lis);//đẩy từng loại sản phẩm khi chọn type ,  trùng với listP vì lấy sản phẩm ra

//       request.setAttribute("tag", cateID);
        String indexP = request.getParameter("index");
        if(indexP == null){
            indexP = "1";
        }
        int index = Integer.parseInt(indexP);

        int c = obj.getTotalAccount();//24
        //
        int endpage = c / 6;//6 sản phẩm trên trang
        if (c % 6 != 0) {
            endpage++;
        }

        List<product> listt = obj.paginProduct(index);
        request.setAttribute("listP", listt);
        HttpSession session = request.getSession();
        session.getAttribute("list");
        request.setAttribute("endP", endpage);
        
                request.setAttribute("tag", index);
        request.getRequestDispatcher("category.jsp").forward(request, response);

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
