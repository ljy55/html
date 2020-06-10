<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	h1{
		color : red;
	}
	p{
		font-size : 1.5em;
	}
	span{
		color : blue;
		font-size : 2.0em;
	}
</style>
</head>
<body>
	<h1>JSP : Java Server Page</h1>
	<h3>html태그나 css style , javascript와 java코드를 혼용하여 코딩할 수 있다</h3>
	<p>java 코드를 기술할때는 &lt;%  %&gt; 사이에 기술한다</p>
	<p>클라이언트 요청시(전송시) form양식으로 입력한 데이터 값을 가져온다</p>
	<p>이미 내장되어 있는 요청객체 request를 이용하여 가져온다</p>
	<p>request.getParameter("name")</p>
	<p>결과를 출력할때는 out.print(변수) 또는 &lt;%= %&gt;를 이용한다</p>
	 <hr color="green">
	<%
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		//db연결하고 CRUD처리한다
		out.print(addr + "에 사시는 " + name + "님 환영합니다");
	%>
	 <br>
	 <br>
	<span> <%=name %> 님 환영합니다 </span>
	<%=addr %>에 사시는군요
</body>
</html>