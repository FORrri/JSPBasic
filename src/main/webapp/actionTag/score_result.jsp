<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60점 이상이면 score_ok으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_no으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	
	int score1 = Integer.parseInt(request.getParameter("Korean"));
	int score2 = Integer.parseInt(request.getParameter("English"));
	int score3 = Integer.parseInt(request.getParameter("Math"));
	double avg = (double)(score1 + score2 + score3) /3.0;
	
	//avg를 다음화면에서 사용하려면 setAttribute 저장(sendRedirect X)
	request.setAttribute("avg", avg);
	
%>
	<%if(avg>=60){ %>
		<!-- request.getRequestDispatcher("score_ok.jsp").foward(request.response); -->
		<jsp:forward page = "score_ok.jsp" />
	<%} else { %>
	<!-- request.getRequestDispatcher("score_no.jsp").foward(request.response); -->
		<jsp:forward page = "score_no.jsp" />
	<%} %>
