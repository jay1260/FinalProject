<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
	.li{
		float: right;
		color: gray;
		list-style: none;
	}
	
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container select">
	
	<div class="title">
		<h1 class="tt">${level.title}</h1>
	</div>
	
	<div class = "date">
		<ul class= "li">
		<li id="writer">${level.writer}</li>
		<li>${level.regDate }</li>
		</ul>
	</div>

</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>