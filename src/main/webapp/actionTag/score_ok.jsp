<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

double avg = (double)request.getAttribute("avg"); 
String name = request.getParameter("name");  //String name = request.getAttribute("name"); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=name %>님 평균은 <%=avg %>점 합격입니다!

</body>
</html>