<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/mycss.css">
<style>
	table{
		border : 2px solid blue;
	}
	td{
		width : 200px;
		height : 40px;
		padding : 2px;
		text-align: center;
		font-size : 1.2em;
	}
	span{
		display : inline-block;
		margin : 3px;
		width : 150px;
		height : 40px;
		padding-top : 15px;
	}
</style>
</head>
<body>
	<h3>클라이언트 전송시 입력한 데이터 값을 전달 받는다</h3>
	<p> request.getParameter('name이름')
	<br><br>
	<%
	//클라이언트 전송시 입력한 데이터 값을 전달 받는다
	request.setCharacterEncoding("UTF-8");
	
	String sname = request.getParameter("name");
	String sid = request.getParameter("id");
	String spass = request.getParameter("pass");
	String stel = request.getParameter("tel");
	String saddr = request.getParameter("addr");
	
	out.print("이름 : " + sname + "<br>" + "아이디 : " + sid + "<br>" 
			   + "비밀번호 : " + spass + "<br>" + "전화번호 : " + stel + "<br>" + "주소 : " + saddr + "<br><br>");
	
	out.print("<span>이름 : </span><span class='data'>" + sname + "</span><br>");
	out.print("<span>아이디 : </span><span class='data'>" + sid + "</span><br>");
	out.print("<span>전화번호 : </span><span class='data'>" + stel + "</span><br>");
	out.print("<span>주소 : </span><span class='data'>" + saddr + "</span><br>");
	
	%>
	<hr>
		<table border="1">
		<tr>
			<td>이름</td>
			<td><%=sname %></td>
		</tr>
		
		<tr>
			<td>아이디</td>
			<td><%=sid %></td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td><%=spass %></td>
		</tr>
		
		<tr>
			<td>주소</td>
			<td><%=saddr %></td>
		</tr>
		
		<tr>
			<td>전화번호</td>
			<td><%=stel %></td>
		</tr>
</body>
</html>