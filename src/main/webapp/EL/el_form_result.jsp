<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

/* 	${} 이거쓰면 아래꺼는 안써줘도됨
	String name = request.getParameter("name");
	String age = request.getParameter("age");
 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>파라미터 값은 param 객체로 받을 수 있음</h3>
	이름: ${param.name } <br>
	나이: ${param.age }

</body>
</html>