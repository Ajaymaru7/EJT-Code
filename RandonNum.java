package rendomeumber;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RandonNum
 */
public class RandonNum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String input1 = ((ServletRequest) response).getParameter("input1");
		String input2 = ((ServletRequest) response).getParameter("input2");
		String input3 = ((ServletRequest) response).getParameter("input3");
		
		out.println("input:"+input1+","+input2+","+input3);
	}

}
