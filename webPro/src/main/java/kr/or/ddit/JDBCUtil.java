package kr.or.ddit;

public class JDBCUtil {
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
}
