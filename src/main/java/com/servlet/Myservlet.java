package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//서블릿: 클라이언트로부터 요청을 받을수 있는 자바클래스
//서블릿을 연결하는 방법1: 어노테이션(/는 경로를 나타내는 거라 꼭 붙여줘야함)
@WebServlet("/apple")


public class Myservlet extends HttpServlet{
	
	/**
	 * @홍길동
	 * 서블릿 버전1
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//2개의 메서드를 오버라이딩
	//doGet, doPost (ctrl+space)
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//모든 자바코드 다 쓸 수 있음
		//System.out.println("hello world!");
		
		//브라우저로 출력
		resp.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.println("hello world! <br>");
		out.println("헬로 월드");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	
}
