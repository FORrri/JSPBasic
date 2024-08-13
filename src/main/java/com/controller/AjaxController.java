package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.ajax")
public class AjaxController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI(); //ip, port번호 제외된 주소
		String path = request.getContextPath(); //프로젝트 식별 이름
		String command = uri.substring( path.length());
		
		System.out.println(command);
		
		if(command.equals("/ajax/hello.ajax")) { //basic.jsp ->GET방식
			
			//get방식은 request.getParameter()으로 받으면 됨
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			
			System.out.println("name:" + name + ",age:" + age);
			
			//서버에서 데이터를 보낼때
			response.setContentType("application/json"); //서버 측에서 제이슨 타입으로 응답하겠다는 의미
			
			PrintWriter out = response.getWriter();
			//out.println("서버에서 응답한 값");
			//out.println("{\"key\": \"이순신\"}"); //클라이언트에게 이 데이터가 json인거 알려줌
			
			//쉽게 사용하기 위해 JSONObject 또는 GSON 외부라이브러리 사용!(자바오브젝트->JSON 으로 파싱해줌)
			//메이븐 레파지토리 -> JSON.simple 다운로드(1.1.1 bundle)
			//상세한 사용방법은 구글링
			
			JSONObject obj = new JSONObject(); //사용start
			obj.put("name", "이순신");
			obj.put("age", "20");
			
			out.println(obj.toString());
			
		} else if(command.equals("/ajax/bye.ajax")) { //basic.jsp ->POST방식
			
			//form형식으로 받기
			//String name = request.getParameter("name");
			//String age = request.getParameter("age");
			//System.out.println("name" + name + ",age:" + age);
			
			//JSON데이터 받기->JSON 데이터 온거 하나씩 "" 기준으로 잘라서 자바에서 합쳐줘야함(자바에는 제이슨이 없으니까)
			//쉽게 사용하기 위해서 JSONObject 사용
			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			
			String str = "";
			while( (str = br.readLine() ) != null ) {
				sb.append(str);
			}
//			System.out.println(sb.toString());
			
			try {
				JSONParser parser = new JSONParser();
				JSONObject object = (JSONObject)parser.parse(sb.toString());
				
				String name = (String)object.get("name"); //키값
				long age = (long)object.get("age"); //int 캐스팅이 안돼서 long
				
				System.out.println("name:" + name + ",age:" + age);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//클라이언트로 응답은 OUT객체를 사용함.
		}
	}
}