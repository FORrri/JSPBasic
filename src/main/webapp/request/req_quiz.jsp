<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>문제: req_quiz_ok로 post방식으로 데이터를 넘기고, ok페이지에서는 화면에 출력</h3>
	
	<form action="req_quiz_ok.jsp" method="post">
	
	아이디
	<input type="text" name="id" placeholder="힌트" size="7"> <br>
	
	비밀번호
	<input type="password" name="pw"> <br>

	관심분야:
	<input type="checkbox" name="inter" value = "java">java
	<input type="checkbox" name="inter" value = "jsp">jsp
	<input type="checkbox" name="inter" value = "datebase">database
	<input type="checkbox" name="inter" value = "python">python <br>
	
	전공분야:
	<input type="radio" name="major" value = "경영학과">경영학과
	<input type="radio" name="major" value = "컴퓨터공학과">컴퓨터공학과
	<input type="radio" name="major" value = "철학과">철학과
	<input type="radio" name="major" value = "수학과">수학과 <br>
	
	입사일:
	<input type="date" name="regdate"> <br>

	지역:
	<select name="region">
		<option>서울시</option>
		<option>경기도</option>
		<option>부산시</option>
		<option>인천시</option>
	</select> <br>

	자기소개:<br>
	<textarea rows="5" cols="30" name="introduce"></textarea> <br>
	
	<input type="submit" value="확인">
	<input type="reset" value="다시작성하기">
	<input type="button" value="그냥버튼">
	<input type="submit" value="제출">
	
	</form>



</body>
</html>