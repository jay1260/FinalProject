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
	
		<form action="./memberJoin" class ="mem">
	         <div class="form-group" id="id">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
                   </div>
             </div>
             <div class="form-group" id="Password">
                <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                  <div class="col-lg-10">
                      <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                  </div>
             </div>
             <div class="form-group" id="PasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                  <div class="col-lg-10">
                      <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                  </div>
             </div>
             <div class="form-group" id="Name">
                 <label for="inputName" class="col-lg-2 control-label">이름</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                  </div>
             </div>
             <div class="form-group" id="age">
                 <label for="age" class="col-lg-2 control-label">나이</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control onlyHangul" id="age" data-rule-required="true" placeholder="나이입력" maxlength="15">  
                  </div>
             </div>     
             <div class="form-group" id="email">
                 <label for="email" class="col-lg-2 control-label">이메일</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control onlyHangul" id="email" data-rule-required="true" placeholder="이메일 입력" maxlength="15">
                  </div>
             </div>
             <div class="form-group" id="email">
                 <label for="file" class="col-lg-2 control-label">사진첨부</label>
                  <div class="col-lg-10">
                     <input type="file" class="form-control onlyHangul" id="file" data-rule-required="true">
                  </div>
             </div>
		</form>
		<input type="button" value ="회원가입" class="btn btn-warning register">
	</div>

</div>
    <c:import url="../template/footer.jsp"></c:import>
</body>
</html>