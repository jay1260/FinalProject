<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>No.1 맛집탐험</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">

.memberLogin{
	width: 300px;
	height: 500px;
	margin: 0 auto;
	padding-top: 100px;
	padding-bottom: 100px;
}

.log{
 width: 90px;
 height: 40px;
 float: right;
 margin-bottom: 40px;
}
.find{
	list-style: none;
	float: left;
	margin: 0 auto;
	
}
.agree{
	list-style: none;
	float: left;
	margin: 0 auto;
	margin-left: 20px;
}
.member{
	width: 504px;
	height: 41.2px;
}


</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
<div class="memberLogin">
	
	<form action="./memberLogin" class ="mem" method="post">
	  <div class = "comment">
	  	<table>
		<tr>
		<td><img alt="" class = "logo"src="../image/member/unnamed.png"></td>
		<td><h3 class = "comment_log">로그인 해주세요.</h3></td>
		</tr>
		</table>
	  </div>
   	  <div class="form-group" id="inputID">
	    <input type="text" class="form-control" id="id"name="id" placeholder="ID 입력">
	  </div>
	
	  <div class="form-group" id="inputPw">
	    <input type="password" class="form-control" id="pw" name="pw" placeholder="PW 입력">
	  </div>
	   <button type="submit" class="btn btn-warning log" >로그인</button>
	
	  <div class="checkbox">
	    <label><input type="checkbox"> ID기억하기</label>
	  </div>
	 
	  <div class ="member">
	  	<ul>
	  		<li class ="find"><a href="#">비밀번호찾기</a></li>
	  		<li class ="agree"><a href="./memberAgree">회원가입</a></li>
	  	</ul>
	  </div>
	
	</form>
</div>	
</div>
<c:import url="../template/footer.jsp"></c:import>


</body>
</html>