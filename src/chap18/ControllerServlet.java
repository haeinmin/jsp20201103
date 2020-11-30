package chap18;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	//1단계, HTTP요청 받
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
	}


private void processRequest(HttpServlet request, HttpServletResponse response) throws IOException, ServletException {
	//2단계, 요청분석
	// request 객체로부터 사용자의 요청을 분석하는 코드
	
	//3단계, 모델 사용하여 오청한 기능 수행
	// 사용자 요청에 따라 알맞은 코드
	
	//4단계, request나 session에 처리 결과 저장
	request.setAttribute("result", resultObject) //이런 형태
	
	//5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
	RequestDispatcher dispatcher = request.getRequestDispatcher("/view.jsp");
	dispatcher.forward(request,response);
}
}