package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AgeCalculatorServlet", urlPatterns = {"/age"})
public class AgeCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Retrieve parameters 
        String age = request.getParameter("age");
        
        // Set attributes from request
        request.setAttribute("age", age);
        
        // Checking the input 
        if ((age == null) || age.equals("")) {
                request.setAttribute("message", "You must give your current age in number only");
            } 
        else if (!age.matches("[0-9]+")) {
            request.setAttribute("message", "You must enter only numbers");
        }
        else {
            request.setAttribute("message", "Your age next birthday will be " + (Integer.parseInt(age) + 1));
        }
        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
    }
}
