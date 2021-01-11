<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<div class="container">
	<h3 style="margin:30px 0;">아이디님의 작성 리뷰</h3>
	<table class="table table-hover">
		<tr>
			<th>Writer</th><th>contents</th><th>star</th><th>Date</th>
		</tr>
		<c:forEach items="${myRe}" var="myR">
			<tr>
				<td>${myR.writer}</td>
				<td>${myR.contents}</td>
				<td>${myR.star}</td>
				<td>${myR.regDate}</td>
			</tr>
		</c:forEach>
	</table>
</div>	
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>