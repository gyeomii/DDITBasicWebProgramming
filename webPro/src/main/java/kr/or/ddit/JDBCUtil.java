package kr.or.ddit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

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
}
