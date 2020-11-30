package chap18.complex2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Complex2Controller
 */
@WebServlet("/complex2")
public class Complex2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//2단계, 요청 파악
		//request 객체로부터 사용자의 요청을 파악하는 코드
		String type = request.getParameter("type");
		
		//3단계, 요청한 기능 수행
		// 사용자의 요청에 따라 알맞은 코드
		Object resultObject = null;
		ModelInterface model = null;
		
		/* 단순화할 예정 
		if(type == null || type.equals("greeting")) {
			Model1 m1 = new Model1();            //작업이 굉장히 복잡할 경우 다른 클래스의 메소드로 보냄 
			resultObject = m1.method1();
		} else if(type.equals("date")) {
			Model2 m2 = new Model2();
			resultObject = m2.doModel2();
		} else {
			resultObject = "Invalid Type";
		}
		*/
		

		if(type == null || type.equals("greeting")) {
			model = new Model1();
		} else if(type.equals("date")) {
			Model2 m2 = new Model2();
			model = new Model2();
		} else {
			resultObject = "Invalid Type";
		}
		
		resultObject = model.execute();
		
		//4단계, request나 session에 처리 결과 저장
		request.setAttribute("result", resultObject);
		
		//5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("chap18/simpleView.jsp");
		dispatcher.forward(request, response);
	}
}