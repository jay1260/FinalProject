<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style type="text/css">
	.basic-info-list{
		border-bottom: 1px solid #dbdbdb;
		background-color: #f7f7f7;
	}
	.basic-info-list>.inner{
		margin: 0 auto;
		padding: 38px 30px 20px 30px;
		width: 860px;
	}

	.basic-info-list .title{
		margin-top: 11px;
		font-size:26px;
		color: #000000;
		line-height: 1.2em;
		text-align: center;
	}
	.container{
		margin-top: 50px;
		margin-bottom: 100px;
	}
	.col-sm-6 .col-xs-12 .col-md-8 .col-sm-4 .col-sm-8{
		padding-left: 0;
	}
	#insertBtn{
		width:40%;
		margin-top:40px;
		margin-left: 30%;
		margin-right: 30%;
		border: none;
		padding: 14px 40px;
		border-radius: 12px;
		font-size: 16px;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<header class="basic-info-list">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title">추천하시는 식당의 정확한 정보를 입력해주세요.</h1>
	</div>
</header>		
<!-- 글쓰기 폼 -->
<div class="container">
	<form action="./placeWrite" method="post">
		<div class="form-group col-xs-12 col-md-4">
			<label for="photo">대표사진을 첨부해주세요</label>
			<input type="file" class="form-control" id="photo" name="photo">
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title" name="title">
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="writer">작성자</label>
			<input type="text" class="form-control" id="writer" name="writer">
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="address">식당 주소</label>
			<input type="text" class="form-control" id="address" name="address">
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="phone">식당 번호</label>
			<input type="text" class="form-control" id="phone" name="phone">
		</div>
		<div class="form-group col-sm-6">
			<label for="메뉴">대표 메뉴</label>
			<input type="text" class="form-control" id="menu" name="menu">
		</div>
		<div class="form-group col-sm-6">
			<label for="restaurant">식당 상호</label>
			<input type="text" class="form-control" id="restaurant" name="restaurant">
		</div>
		<div class="form-group col-sm-6">
			<label for="time">오픈 시간</label>
			<input type="time" class="form-control" id="openTime" name="openTime">
		</div>
		<div class="form-group col-sm-6">
			<label for="time">마감 시간</label>
			<input type="time" class="form-control" id="closeTime" name="closeTime">
		</div>
		<div class="form-group col-sm-6">
			<label for="price">가격대</label>
			<input type="text" class="form-control" id="price" name="price">
		</div>
		<div class="form-group col-sm-6">
			<label for="rest">휴무일</label>
			<input type="text" class="form-control" id="rest" name="rest">
		</div>
		<div class="form-group col-xs-12 col-md-12">
			<label for="contents">추천 이유</label>
			<textarea class="form-control" rows="5" id="contents" name="contents"></textarea>
		</div>
		<div class="btn-css">		
			<input type="submit" class="col-sm-9 col-md-6 col-lg-8 btn btn-warning" value="등록하기" id="insertBtn">
		</div>
	</form>
</div>
<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript">
	$("#contents").summernote({
		placeholder:'추천하시는 이유가 있으면 작성해주세요~',
		height:300
	});
</script>
</html>