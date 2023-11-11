

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("txtname");
		String password = request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		if(name.equals("Ajay") && password.equals("ajay")) {
			HttpSession hs = request.getSession();
			hs.setAttribute("uname", name);
			response.sendRedirect("success.jsp");
		}
		else {
			out.println("<font color=red size=5 face= verdana> Sorry! Username or Password is Incorrect...</font>");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
	}

}