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
.container{
	width: 50%;

}
.page{
	margin: 30px auto;
	width: 25%;
	height:50px;
}
.form-control{
	margin-bottom: 25px;
	
}
.update{
	float: right;
	margin-right: 7px; 
}
.my-photo{

	margin-top : 90px;
	margin-bottom: 20px;

}
.photo{
	width: 94px;
	height: 94px;
}
.photo-update{
	width: 200px;
	height: 30px;
}
.delete{
	margin-right:15px; 
}
#label{
	width: 150px;
}
.update .delete{
	margin-bottom: 20px;
}
.logo{
	width: 100px;
	height: 100px;	
	margin-top: 20px;
	margin-bottom: 20px;
}

</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
 <div class="container">
 	<div class="page">
 		<table>
		<tr>
		<td><img alt="" class = "logo"src="../image/member/unnamed.png"></td>
		<td><h3 class = "comment_log">내 정보</h3></td>
		</tr>
		</table>
 	</div>
 	<div class="my-photo"> 		 		
 		
 	</div>
 	<div class="revise">
 		<form action="./memberUpdate" class ="mem" method="post" name="frm">
 	
 		<table>
			<tr>
				<td><label for="inputphoto" class="col-lg-2 control-label"id="label">사진</label></td>
				<td><img alt="" class = "logo"src="../upload/member/${member.memberFileVO.fileName}"></td>
				
			</tr>
		</table>
		
			<div class="form-group" id="divgrade">
                <label for="inputgrade" class="col-lg-2 control-label">등급</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control" id="grade" data-rule-required="true"  maxlength="30" value="${members.level}" readonly="readonly" name="level">
                   </div>
             </div>
 	
	         <div class="form-group" id="divId">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control" id="id" data-rule-required="true"  maxlength="30" readonly="readonly" value="${members.id}"name="id">
                   </div>
             </div>
   
             <div class="form-group" id="divName">
                 <label for="inputName" class="col-lg-2 control-label">이름</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control " id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15" value="${members.name}" readonly="readonly" name="name">
                  </div>
             </div>
    
             <div class="form-group" id="age">
                 <label for="age" class="col-lg-2 control-label">나이</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control" id="age" data-rule-required="true" placeholder="나이입력" maxlength="15" value="${members.age}" name="age">  
                  </div>
    
             <div class="form-group" id="email">
                 <label for="email" class="col-lg-2 control-label">이메일</label>
                  <div class="col-lg-10">
                     <input type="text" class="form-control" id="email" data-rule-required="true" placeholder="이메일 입력" maxlength="15" value = "${members.email}" name="email">
                  </div>
             </div>
    
             <div class="update">
					<input type="submit" class ="btn btn-warning" id="update" value="수정하기"/>
             </div>
         
             </div>
		</form>

 	</div>
 </div>
 	
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">

</script>
</html>