package TOBA.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 2344109
 */
public class ResetPasswordServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        
        String username = req.getParameter("Username");
        String password = req.getParameter("Password");
        String confirm = req.getParameter("Confirm");
        
        HttpSession session = req.getSession();
        
        User user = (User) session.getAttribute("user");
        
        String url, message, image;
        
        if (username.equals(user.getUsername())) {
            if (password.equals(confirm)) {
                url = "/Account_activity.jsp";
                message = "";
                image = "";
                user.setPassword(password);
            }
            else {
                url = "/password_reset.jsp";
                message = "Passwords must match.";
                image = "";
            }
        }
        else {
            // Form tampering detection trigger (The forwarded page will look more
                // professional after the security stage of development)
            url = "/NiceTry.jsp";
            message = "Please do not tamper with the username field.";
            image = "images/niceTry.png";
        }
        
        req.setAttribute("message", message);
        req.setAttribute("image", image);
        // Set the user object to the session scope
        session.setAttribute("user", user);
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
