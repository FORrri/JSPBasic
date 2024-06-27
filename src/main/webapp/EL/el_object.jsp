<%@page import="com.model.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//setAttribute로 request에 저장
	DepartmentDTO dto = new DepartmentDTO();
	dto.setDepartmentId(100);
	dto.setDepartmentname("IT");
	
	request.setAttribute("email", "tjgml2435@naver.com");
	request.setAttribute("dto", dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>setAttribute로 저장된 값을 EL태그로 사용하기</h3> <br>
	<h3>getAttribute 생략가능</h3>
	
	${requestScope.email } <br>
	${requestScope.dto.departmentId } <br>
	${requestScope.dto.departmentname } <br>
	
	
	보통 requestScope는 생략하고 많이 씁니다<br>
	${email } <br>
	${dto.departmentId } <br>
	${dto.departmentname } <br>
	
	
</body>
</html>