<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
	.write_top{
		text-align:center; 
		margin-top:50px;
		margin-bottom:55px;
		font-weight: bold;
	}
	
	.writeBtn{
		float: right;
		margin: 25px 15px 40px 0;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<h3 class="write_top">
		<span style="color: #ff7400;"> NO.1 맛집탐험</span>
		소통 작성
	</h3>
	<form action="" method="post" id="talkFrm">
		<!-- 
		<input type="text" value="${member.id}" name="writer" hidden="hidden">
		 -->
		<div class="form-group col-xs-12 col-md-10">
			<label for="title">제목</label>
			<span style="float: right;">30</span>
			<span style="float: right;">/</span>
			<span style="float: right;" id="keyValue">0</span>
			<input type="text" class="form-control" id="title" name="title" maxlength="30">
			<div id="lengthResult"></div>
		</div>
		<div class="form-group col-xs-12 col-md-12">
			<label for="contents">내용</label>
			<textarea class="form-control" rows="15" id="contents" name="contents"></textarea>
		</div>
		
		<input type="button" class="btn btn-primary writeBtn" id="tWriteBtn" value="소통하기">
		<input type="button" class="btn btn-primary writeBtn" id="nWriteBtn" value="공지하기">
	</form>
</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">

	$("#tWriteBtn").click(function(){
		var title = $("#title").val().length;
		var contents = $("#contents").val().length;
		
		$("#talkFrm").attr("action","./talkWrite");
		if(title==0 || contents==0){
			alert("내용을 작성해주세요.");
		}else{
			$("#talkFrm").submit();
		}
	});	

	$("#nWriteBtn").click(function(){
		var title = $("#title").val().length;
		var contents = $("#contents").val().length;
		
		$("#talkFrm").attr("action","../notice/noticeWrite");
		if(title==0 || contents==0){
			alert("내용을 작성해주세요.");
		}else{
			$("#talkFrm").submit();
		}
	});

	// 글자수 세기
	$("#title").keyup(function(){
		var titleLength = $(this).val().length;
		var remain = 0+titleLength

		$("#keyValue").html(remain);
		if(titleLength>=30){
			alert("최대 30글자까지 작성 가능합니다.");
		}
	});
</script>
</html>