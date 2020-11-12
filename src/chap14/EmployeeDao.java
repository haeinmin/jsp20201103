package chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
	public static List<String> listEmployeeName() {
		List<String> list = new ArrayList<>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";
		
		String sql = "SELECT ename FROM employee";

		// 1~5 try로 묶어야 함
		//6~7은 finally에 넣고 다시 try-catch
		try {
			// 1. jdbc 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			// 2. db connection 구함
				
			con = DriverManager.getConnection(url, id, pw); //db 위치, 사용자 id, pw 통해 연결
				
			// 3. 쿼리 실행을 위한 statement 객체 생성
			stmt = con.createStatement();
				
				
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
				
			// 5. 쿼리 실행 결과 사용
//			rs.next();
//			System.out.println(rs.getString("ename"));          //smith
//			rs.next();
//			System.out.println(rs.getString("ename"));          //allen
			// ............. continue -> loop
			while (rs.next()) {
				list.add(rs.getString("ename"));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. statement 종료
			try {
				if (stmt != null) {  //nullpointexception 방지					
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			// 7. db connection 종료
			try {
				if (con != null) {
					con.close();					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
			
	return list;
		
	}
}
