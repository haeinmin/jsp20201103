package chap17.textbook;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NowServlet
 */
@WebServlet("/now")
public class NowServlet extends HttpServlet {
       
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=UTF-8");
	
	PrintWriter out = response.getWriter();
	out.println("<html>");
	out.println("<head><title>current time</title></head>");
	out.println("<body>");
	out.println("current time is");
	out.println(new Date());
	out.println("</body></html>");
}
}
