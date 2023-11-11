package loops;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoopsServlet
 */
public class LoopsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table border = 5>");
			for(int row = 1; row <= 10; row++) {
				out.println("<tr>");
				for(int cols = 1; cols <= 10; cols++) {
					out.println("<td> Ajay </td>");
				}
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
	}

}
