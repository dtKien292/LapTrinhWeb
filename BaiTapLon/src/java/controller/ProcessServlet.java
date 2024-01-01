/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.SanPham;

/**
 *
 * @author Admin
 */
public class ProcessServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProcessServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Cart c = null;
        Object o = session.getAttribute("cart");
        if(o!=null){
            c = (Cart) o;
        }
        else {
            c = new Cart();
        }
        
        String num_raw = request.getParameter("num");
        String id = request.getParameter("id");
        int num;
        try{
            num = Integer.parseInt(num_raw);
            if(num==-1 && c.getItemByID(id).getSoluong()==1){
                c.removeItem(id);
            }
            else {
                SanPhamDAO d = new  SanPhamDAO();
                SanPham s = d.getSanPhamByID(id);
                Item i = new Item(s, num, s.getGiaban());
                c.addItem(i);
            }
        } catch(NumberFormatException e){
            System.out.println(e);
        }
        session.setAttribute("cart", c);
        session.setAttribute("size", c.getItems().size());
        response.sendRedirect("giohang");
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id = request.getParameter("id");
        HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        if(o!=null){
            cart = (Cart)o;
        }
        else {
            cart = new  Cart();
        }
        cart.removeItem(id);
        session.setAttribute("cart", cart);
        session.setAttribute("size", cart.getItems().size());
        response.sendRedirect("giohang");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
