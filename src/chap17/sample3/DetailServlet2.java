package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;
import chap20.lecture.DBUtil;

/**
 * Servlet implementation class DetailServlet2
 */
@WebServlet(name = "DetailServlet2",
urlPatterns = { "/sample3/post/detail" })
public class DetailServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Post post = getPost(id);
		
		String path="/WEB-INF/view/chap17/detail.jsp";
		request.setAttribute("post", post);
		request.getRequestDispatcher(path).forward(request, response);
	}

	private Post getPost(String id) {
		Post post = null;

		String sql = "select id, title, body from post where id=?";

//		String url = "jdbc:oracle:thin:@localhost:49161:xe";
//		String user = "system";
//		String pw = "admin";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			// 1.드라이버로딩
			// Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
//			con = DriverManager.getConnection(url, user, pw);
			con = DBUtil.getConnection();
			// 3.statement생성
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(id));
			// 4.쿼리 실행
			rs = pstmt.executeQuery();
			// 5.결과 처리
			if (rs.next()) {
				post = new Post();
				post.setId(rs.getInt(1));
				post.setTitle(rs.getString(2));
				post.setBody(rs.getString(3));
			}
			// SELECT id, title FROM post
			
			// 6. statement, 연결 닫기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();					
				} catch (Exception e) {
					e.printStackTrace();
				}
			} if (con != null) {
				try {
					con.close();								
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		}

		return post;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
