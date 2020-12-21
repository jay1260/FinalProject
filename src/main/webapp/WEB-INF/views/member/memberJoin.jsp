<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>No.1 맛집탐험</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">

	.memberJoin{
		height: 100%;
		width : 70%;
		margin: 50px auto;
	}
	.container{
		height: 600px;
		width: 80%;
	}
	.title{
		height:50px;
		width: 20%;
		margin: 10px auto;
	}

	.btn{
		margin-left : 768px;
		width: 82px;
		height: 34px;
	}
	#id{
		margin-bottom: 20px;
	}
	#password{
		margin-bottom: 20px;
	}
	#passwordCheck{
		margin-bottom: 20px;
	}
	#name{
		margin-bottom: 20px;
	}
	#age{
		margin-bottom: 20px;
	}
	#email{
		margin-bottom: 20px;
	}
	.register{
		width: 150px;
		height: 50px;
		float: right;
		margin-top : 20px;
		margin-right: 15px;
	}

	
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<div class = "title">
		<table>
			<tr>
			<td><img alt="" class = "logo"src="../image/member/unnamed.png"></td>
			<td><h3 class = "register">신규회원가입</h3></td>
			</tr>
		</table>	
	</div>
	<div class="memberJoin">
	
		<form:form modelAttribute="memberVO" enctype="multipart/form-data" id="frm">
   	<div class="form-group">
   
      <label for="id">id:</label>
      <!-- path:parameter Name -->
      <form:input path="id" class="form-control"/>
      <form:errors path="id"cssClass="error"></form:errors>
    </div>
   
   <div class="form-group">
      <label for="pw">PW:</label>
      <form:input path="pw" class="form-control"/>
      <form:errors path="pw" cssClass="error"/>
    </div>
    
    
   <div class="form-group">
      <label for="pw">PW:</label>
      <form:input path="pw2" class="form-control"/>
      <form:errors path="pw2" cssClass="error"/>
    </div>

	<div class="form-group">
	  <label for="name">name:</label>
      <!-- path:parameter Name -->
      <form:input path="name" class="form-control"/>
      <form:errors path="name"cssClass="error"></form:errors>
    </div>
    
    <div class="form-group">
	  <label for="email">email:</label>
      <!-- path:parameter Name -->
      <form:input path="email" class="form-control"/>
      <form:errors path="email"cssClass="error"></form:errors>
    </div>
   

    <button type="submit" class="btn btn-primary">Write</button>
    
   </form:form>

  </div>

</div>
    <c:import url="../template/footer.jsp"></c:import>
</body>
</html>