import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/NumberMatchingServlet")
public class RandomNumber extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void init() throws ServletException {
   
        Random random = new Random();
        int randomNumber = random.nextInt(100); // Change the range as needed
        getServletContext().setAttribute("randomNumber", randomNumber);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get the user's input number from the request parameter
        String userInput = request.getParameter("userInput");
        int randomNumber = (int) getServletContext().getAttribute("randomNumber");

        out.println("<html>");
        out.println("<head><title>Number Matching</title></head>");
        out.println("<body>");

        if (userInput != null && !userInput.isEmpty()) {
            int userNumber = Integer.parseInt(userInput);
            if (userNumber == randomNumber) {
                out.println("<p><strong>Matching number: " + randomNumber + "</strong></p>");
            } else {
                out.println("<p>Sorry, no match. Try again!</p>");
            }
        }

        out.println("<form action='RandomNumber.java' method='GET'>");
        out.println("Enter a number: <input type='text' name='userInput'>");
        out.println("<input type='submit' value='Check'>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }
}
