<%@page import="com.model.DepartmentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//받을 값은 없으니까 조회만
	
	//DAO객체 생성
	//new DepartmentDAO();
	DepartmentDAO dao = DepartmentDAO.getInstance(); //싱글콘 객체생성
	ArrayList<DepartmentDTO> list = dao.getList(); //부서 조회 메서드 호출
	
	//리스트를 다음 페이지로 전달
	request.setAttribute("list", list); //request에 저장
	
	//포워드로 결과화면 이동
	request.getRequestDispatcher("select_list.jsp").forward(request, response);

%>