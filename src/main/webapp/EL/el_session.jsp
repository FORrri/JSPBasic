<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 값을 저장
	session.setAttribute("user_id", "aaa123");
	session.setAttribute("user_name", "홍길동");
	
	//application에 값을 저장
	application.setAttribute("menu", new String[] {"아아", "카페라떼"});

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>[session]setAttribute로 저장된 값을 EL태그로 사용하기 -> getAttribute 생략가능</h3>

	${sessionScope.user_id } <br>
	${sessionScope.user_name } <br>
	
	<!-- 
		sessionScope, applicationScope도 생략이 가능한데, 쓰는 편이 좋습니다.
		생략하게 되면 request -> session -> application 순서로 이름값을 찾기 때문에 같은값이 있으면 혼동을 줄 수 있음
	 -->
	
	${user_id } <br>
	${user_name } <br>
	
	<h3>[application]setAttribute로 저장된 값을 EL태그로 사용하기 -> getAttribute 생략가능</h3>
	
	${applicationScope.menu }

</body>
</html>