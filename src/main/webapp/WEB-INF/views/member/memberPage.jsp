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
.page{
	margin: 30px auto;
	width: 10%;
	height: 30px;
}
</style>
</head>

<body>
<c:import url="../template/header.jsp"></c:import>
 <div class="container">
 	<div class="page">
 		 <h3 class = "my">내 정보</h3>
 	</div>
 	<div class="revise">
 				<form action="./memberJoin" class ="mem">
	         <div class="form-group" id="divId">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true"  maxlength="30">
                   </div>
             </div>
             <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                  <div class="col-lg-10">
                      <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                  </div>
             </div>
             <div class="form-group" id="divPasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                  <div class="col-lg-10">
                      <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                  </div>
             </div>
             <div class="form-group" id="divName">
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
             <div class="form-group" id="email">
                 <label for="email" class="col-lg-2 control-label">이메일</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control onlyHangul" id="email" data-rule-required="true" placeholder="이메일 입력" maxlength="15">
                  </div>
             </div>
             </div>
		</form>
 	</div>
 </div>	


<c:import url="../template/footer.jsp"></c:import>
</body>
</html>