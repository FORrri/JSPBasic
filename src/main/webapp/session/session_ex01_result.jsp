<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, 닉네임 파라미터를 받습니다.
	2. 아이디와 비밀번호 같으면 로그인 성공입니다.
	   닉네임과 id를 저장하면 세션을 생성하고, session_welcome페이지로 리다이렉트 시킵니다.
	   welcome에서는 세션을 이용해서 "id(name) 님 환영합니다."를 출력해주세요.
	   
	3. welcome페이지에서는 a태그를 이용해서 로그아웃 기능을 만들어주세요.
	
	*/
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
		
	if(id.equals(pw)){
		
		//세션에 아이디, 닉네임 저장
		session.setAttribute("id", id); //사용자가 실제 입력한 id
		//session.setAttribute("pw", pw);
		session.setAttribute("nick", nick);
		
		response.sendRedirect("session_ex01_welcome.jsp");
		
	} else {
		response.sendRedirect("session_ex01.jsp");
	}
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="session_ex01_welcome.jsp">로그인 확인하기</a>

</body>
</html>