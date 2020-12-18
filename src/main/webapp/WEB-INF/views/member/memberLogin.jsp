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
.memberLogin{
	width: 300px;
	height: 400px;
	margin: 0 auto;
	padding-top: 100px;
	padding-bottom: 100px;
}
.log{
 background-color: #ff7400;
 color:white;
 width: 94px;
 height: 94px;
}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
<div class="memberLogin">
	<form action="./memberLogin">
		<div class="form-group">
	    <input type="text" class="form-control" id="id"name="id" placeholder="ID 입력">
	  </div>
	  <div class="form-group">
	    <input type="password" class="form-control" id="pw" name="pw" placeholder="PW 입력">
	  </div>
	  <div class="checkbox">
	    <label><input type="checkbox"> ID기억하기</label>
	  </div>
	  <button type="submit" class="btn btn-default log" >로그인</button>
	</form>
</div>	
</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>