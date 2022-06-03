package kr.or.ddit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	public static Connection conn;
	//생성자를 만들지 않고
	//static영역에 최초 한번만 드라이버를 생성하고 공유하여 사용
	//static {} : 클래스 초기화 블록 = 클래스 로딩시 처음 한번만 실행된다. 
	static {
		//드라이버 생성
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	/**
	 * Cpnnection 객체 생성
	 * @return conn
	 */
	public static Connection getConn() {
		//연결객체 생성
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String userId = "KSG97";
		String password = "java";
		try {
			DriverManager.getConnection(url, userId, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 생성된 객체 반환
	 * Connection객체만 close 해도 나머지 객체들이 자동반환되지만 
	 * 각 드라이버 마다 동작이 다를 수 있으므로 반드시 모든 객체를 생성된 역순으로 반환한다.
	 * @param conn
	 * @param stmt
	 * @param rs
	 */
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		if (rs != null) try { rs.close(); } catch (SQLException e) {}
		if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
		if (conn != null) try { conn.close(); } catch (SQLException e) {}
	}
}
