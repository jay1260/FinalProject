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

	#insertBtn{
		width:50%;
		background:#a3a3c2;
		margin-top:40px;
		margin-left: 25%;
		margin-right: 25%;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<header class="basic-info-list">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title">정확한 정보를 입력해주세요.</h1>
	</div>
</header>		
<!-- 글쓰기 폼 -->
<div class="container">
	<form>
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title" name="title">
		</div>
		<div class="form-group">
			<label for="writer">작성자</label>
			<input type="text" class="form-control" id="writer" value="작성자" name="writer">
		</div>
		<div class="form-group">
			<label for="메뉴">대표 메뉴</label>
			<input type="text" class="form-control" id="menu" name="menu">
		</div>
		<div class="form-group">
			<label for="restaurant">식당 상호</label>
			<input type="text" class="form-control" id="restaurant" name="restaurant">
		</div>
		<div class="form-group">
			<label for="address">식당 주소</label>
			<input type="text" class="form-control" id="address" name="address">
		</div>
		<div class="form-group">
			<label for="phone">식당 번호</label>
			<input type="text" class="form-control" id="phone" name="phone">
		</div>
		<div class="form-group">
			<label for="time">운영시간</label>
			<input type="text" class="form-control" id="time" name="time">
		</div>
		<div class="form-group">
			<label for="price">가격대</label>
			<input type="text" class="form-control" id="price" name="price">
		</div>
		<div class="form-group">
			<label for="rest">휴무일</label>
			<input type="text" class="form-control" id="rest" name="rest">
		</div>
		<div class="btn-css">		
			<input type="button" class="btn btn-primary col-sm-9 col-md-6 col-lg-8" value="등록하기" id="insertBtn">
		</div>
	</form>
</div>
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>