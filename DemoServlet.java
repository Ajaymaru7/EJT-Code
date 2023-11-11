package Ajay;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;


public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw= response.getWriter();
		response.setContentType("text/html");
		pw.println("<h1>Random Number</h1>");
		
		Random r=new Random();                       
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		for(int i=0;i<4;i++)
		{
		int a=r.nextInt(100);

		out.println("<ul><li>Random Generated Number"+(i+1)+" is="+a+"</li></ul>");
		                       
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
