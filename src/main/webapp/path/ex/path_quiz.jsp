<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>경로 공부하기</h3>

	<!-- a태그로 jspTag폴더에 include페이지로 상대경로, 절대경로 -->
	
	<a href="../../jspTag/include.jsp">include페이지로 상대경로</a>
	<a href="/JSPBasic/jspTag/include.jsp">include페이지로 절대경로</a>
	
	<!-- MyServlet 맵핑경로는 /JSPBasic/apple 입니다. 상대경로 이동 -->
	
	<a href="../../apple">상대경로 이동</a>
	<a href="/JSPBasic/apple">절대경로 이동</a>
	
	<!-- html 폴더 안에 있는 이미지파일을 상대경로, 절대경로 참조-->
	상대경로:<img alt="제목" src="../../html/image/거북이.jpg" /> 
	절대경로:<img alt="제목" src="/JSPBasic/html/image/거북이.jpg" /> 
	
	
</body>
</html>