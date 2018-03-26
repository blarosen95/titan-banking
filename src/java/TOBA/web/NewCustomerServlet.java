/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 2344109
 */
public class NewCustomerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException, IllegalAccessException {
         res.setContentType("text/html;charset=UTF-8");
         PrintWriter out = res.getWriter();
        
         String firstName = req.getParameter("FirstName");
         String lastName = req.getParameter("LastName");
         String phone = req.getParameter("Phone");
         String address = req.getParameter("Address");
         String city = req.getParameter("City");
         String state = req.getParameter("State");
         String zipcode = req.getParameter("Zipcode");
         String email = req.getParameter("Email");
         
         // Create a List for customer information
         List<String> customer = new ArrayList<>();
         customer.addAll(Arrays.asList(firstName, lastName, phone, address, city, state, zipcode, email));
         
         // Create a Customer object to (temporarily, for now) store the customer's information.
         Customer cust = new Customer(firstName, lastName, phone, address, city, state, zipcode, email);
         
         boolean missingInfo = false;
         String message;
         String url;
         
         // Loop through the customer information list and determine if any fields were empty.
         for (String info : customer) {
             if (info.equals("")) {
                missingInfo = true;
            }
         }
         if (missingInfo == false) {
             //res.sendRedirect("Success.html");
             message = "";
             url = "/Success.html";
         }
         else {
             message = "Please fill out all fields.";
             url = "/New_customer.jsp";
         }
         
         req.setAttribute("message", message);
         req.setAttribute("customer", cust);
         out.println(url);
         getServletContext().getRequestDispatcher(url)
                 .forward(req, res);
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
        try {
            processRequest(request, response);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(NewCustomerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(NewCustomerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
