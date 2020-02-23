package com.logic.servlet;

import com.logic.function.demBeans;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Yjares
 */
public class productChoice extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {

            //use this for cart and sign in feature
            HttpSession session = request.getSession(true);

            demBeans calc = new demBeans();

            int a = Integer.parseInt(request.getParameter("productChoice2"));
            int b = Integer.parseInt(request.getParameter("numOfBooks"));

            int count2 = 1;
            double total2 = 1;
            int repeat = 0;
            int totalAmount = 0;

            String count = (String) session.getAttribute("count");
            String total = (String) session.getAttribute("total");

            if (count == null) {
                count2 = 1;
                total2 = 0.00;
                session.setAttribute("amount" + 1, "" + b);
            } else {
                count2 = Integer.parseInt(count);
                total2 = Double.parseDouble(total);
                count2++;
            }

            calc.setTitle(a - 1);
            calc.setPrice(a - 1);

            total2 += (Double.parseDouble(calc.getPrice()) * b);
            double o = (Double.parseDouble(calc.getPrice()) * b);

            if (count2 > 1) {
                for (int i = 1; i < count2; i++) {
                    if (calc.getTitle().equals((String) session.getAttribute("title" + i))) {//check if title matches any previously chosen products
                        repeat = 1; //indicates that there is a dupe
                        int p = Integer.parseInt((String) session.getAttribute("amount" + i));//get previous amount
                        p += b;//plus to current amount
                        double q = p * Double.parseDouble(calc.getPrice());//convert to double
                        total2 += q;//add to total
                        session.setAttribute("amount" + i, "" + p);//set
                        session.setAttribute("price" + i, "" + q);//set
                    } else {
                        session.setAttribute("amount" + count2, "" + b);
                    }
                }
            }


            if (repeat != 1) {
                session.setAttribute("value" + count2, "" + a);
                session.setAttribute("count", "" + count2);
                session.setAttribute("title" + count2, calc.getTitle());
                session.setAttribute("price" + count2, "" + o);
            }

            session.setAttribute("demBeans", calc);
            session.setAttribute("total", "" + total2);
            session.setAttribute("totalamount", "" + totalAmount);

            request.getRequestDispatcher("/cart.jsp").forward(request, response);

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet productChoice</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet productChoice at " + count + count2 + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
