package chap20.lecture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static String url;
	private static String user;
	private static String pw;
	
	static void setUrl(String url) {
		DBUtil.url = url;
	}
	
	static void setUser(String user) {
		DBUtil.user = user;
	}
	
	static void setPw(String pw) {
		DBUtil.pw = pw;
	}
	
	public static Connection getConnection() {
		Connection con = null; 
			
		try {
			con = DriverManager.getConnection(url, user, pw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}

}
