/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mapping.NewHibernateUtil;
import mapping.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author SalindaAZ
 */
public class reg_user extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Session hsession = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = hsession.beginTransaction();
            User u=new User();
            
            String fname = request.getParameter("fname");
            String uname = request.getParameter("uname");
            String usertype = request.getParameter("usertype");
            String pwfield = request.getParameter("pwfield");
            String confirmfield = request.getParameter("confirmfield");
            
            out.print(fname+uname);

//            if (!fname.equals("")&&!uname.equals("")&&!usertype.equals("")&&!pwfield.equals("")&&!confirmfield.equals("")) {
//                if(pwfield.equals(confirmfield)){
//                    u.setFname(fname);
//                    u.setUname(uname);
//                    u.setUserType(usertype);
//                    u.setPassword(pwfield);
//                    hsession.save(u);
//                    t.commit();
//                    out.write("Successfully Saved");
//                    
//                }else{
//                    out.write("Password Fields mismatch");
//                }
//            }else{
//                out.write("Fill all the Textfields Please");
//            }
        } catch (Exception e) {
            out.write("Error");
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
