package tableof6;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/multiplicationTable")
public class SixthTableServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
     // Get the user input from the request
        int number = Integer.parseInt(request.getParameter("number"));

        // Generate the multiplication table and store it in a variable
        StringBuilder table = new StringBuilder();
        for (int i = 1; i <= 10; i++) {
            table.append(number).append(" x ").append(i).append(" = ").append(number * i).append("<br>");
        }

        // Set the result in a request attribute
        request.setAttribute("table", table.toString());

        // Forward the request to the JSP
        request.getRequestDispatcher("Table.jsp").forward(request, response);
    }
}
