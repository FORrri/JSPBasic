package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DepartmentDAO { //lib에 ojdbc11.jar 복사해야함
	
	//DAO는 불필요하게 여러개 만들 필요가 없기 때문에 객체가 한개만 생성되도록
	//singleton형식으로 설계
	
	//1. 나자신의 객체를 1개 생성하고, private을 붙임
	private static DepartmentDAO instance = new DepartmentDAO();
	
	//2. 직접 객체를 생성할 수 없도록 생성자에도 private를 붙임
	private DepartmentDAO() {
		
		//커넥션풀에 사용할 객체를 얻어옴
		
		try {
			InitialContext init = new InitialContext(); //시작설정 객체
			
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			
			
			
		} catch (Exception e) {
			System.out.println("커넥션 풀 에러");
		}

	}
	
	//3. 객체 생성을 요구할때 getter메서드를 사용해서 1번의 객체를 반환
	public static DepartmentDAO getInstance() {
		return instance;
	}
	////////////////////////////////////////////////////////////////
	//필요한 메서드를 생성
	
	//데이터베이스 연결(아래꺼는 멤버변수로 선언)
//	public String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	public String uid = "HR";
//	public String upw = "HR";
	
	//커넥션 풀 객체정보
	private DataSource ds;
	
	//부서명을 조회하는 메서드: 1행은 DTO에 담기기 때문에 여러 행을 가지고 오려면 list에 담을것
	public ArrayList<DepartmentDTO> getList(){
		
		ArrayList<DepartmentDTO> list = new ArrayList<>();
	
		String sql = "SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NOT NULL";
		
		//이건 지역변수로
		Connection conn = null; //연결객체
		PreparedStatement pstmt = null; //sql문 실행객체
		ResultSet rs = null; //결과처리 객체
		
		try {
			
//			Class.forName("oracle.jdbc.OracleDriver");//드라이버 호출
//			
//			conn = DriverManager.getConnection(url, uid, upw); //conn객체
			
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql); //pstmt객체
			
			rs = pstmt.executeQuery(); //select구문의 실행
			
			while(rs.next()) { //다음이 있으면 true
				
				//1행에 대한 처리
				int departmentId = rs.getInt("department_id"); //컬럼명
				String departmentName = rs.getString("department_name");
				int managerId = rs.getInt("manager_id");
				int locationId = rs.getInt("location_id");
				
				//1행을 DTO에 저장
				DepartmentDTO dto = new DepartmentDTO(departmentId, departmentName, managerId, locationId);
				
				//DTO를 list에 추가
				list.add(dto);
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally { //finally쓰고 꼭 close 해줘야함
			
			try {
				
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
				
			} catch (Exception e2) {
				
			}
			
		}
		
		return list; //dto 담겨있음
		
		
	}
	
	
	
	
	

}
