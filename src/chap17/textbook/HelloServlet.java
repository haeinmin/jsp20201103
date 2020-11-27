package chap17.textbook;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet(urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	PrintWriter out = response.getWriter();
	out.println("<html>");
	out.println("<head><title>greetings</title></head>");
	out.println("<body>");
	out.println("hi,");
	out.println(request.getParameter("name"));
	out.println("</body></html>");	
}
}
