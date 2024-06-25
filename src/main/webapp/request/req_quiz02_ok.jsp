<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");

	String strCm = request.getParameter("cm");
	String strKg = request.getParameter("kg");	
	
	//형변환
	double cm = Double.parseDouble(strCm);
	double kg = Double.parseDouble(strKg);
	double BMI = kg / (cm/100 * cm/100);
	
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이름:<%=name %> <br>
	키:<%=cm %> <br>
	몸무게:<%=kg %> <br>
	BMI:<%=BMI %> <br>
	
	<%if(BMI >= 25){
		out.println("과체중");
	} else if (BMI <= 18){
		out.println("저제중");
	} else {
		out.println("정상");
	} %>
	
	<%if(BMI >= 25){%>
		<p>과체중</p>
	<%} else if (BMI <= 18){%>
		<p>저체중</p>
	<%} else {%>
		<p>정상</p>
	<%} %>


</body>
</html>