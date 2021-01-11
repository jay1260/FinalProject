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
			<th>리뷰내용</th><th>별점</th><th>작성날짜</th><th>식당</th>
		</tr>
		<c:forEach items="${myRe}" var="myRe">
			<tr>
				<td>${myRe.contents}</td>
				<td>${myRe.star}</td>
				<td>${myRe.regDate}</td>
				<td>${myRe.restaurant}</td>
			</tr>
		</c:forEach>
	</table>
</div>	
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>