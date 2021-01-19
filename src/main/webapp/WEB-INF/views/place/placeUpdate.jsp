<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- include summernote css/js -->

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
		display:inline-block;
		width:25%;
		margin-top:35px;
		margin-left: 37.5%;
		margin-right: 37.5%;
		border: none;
		padding: 12px 20px;
		border-radius: 12px;
		font-size: 16px;
	}
	.error{
		color: red;
		font-weight: bold;
	}
	.addrBtn{
		background-color:white;
		margin: 3px 2px;
		padding: 0 15px;
		border: none;
		font-weight: 700;
		color: blue;
	}
	#deleteBtn{
		float: right; 
		margin-right: 15px; 
		padding: 12px 20px; 
		border-radius: 12px;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<header class="basic-info-list">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title">변경된 식당의 정보를 정확하게 입력해주세요.</h1>
	</div>
</header>		
<!-- 글쓰기 폼 -->
<div class="container">
	<form:form modelAttribute="placeVO" name="form" id="form">

		<div class="form-group col-xs-12 col-md-10">
			<label for="title">제목</label>
			<form:input path="title" class="form-control" value="${up.title}"/>
			<form:errors path="title" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="writer">작성자</label>
			<form:input path="writer" class="form-control" value="${up.writer}" readonly="true"/>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="roadFullAddr">식당 주소</label>
			<input type="button" onClick="goPopup();" value="+도로명 주소 찾기" class="addrBtn">
			<div id="list"></div>
			<div id="callBackDiv">
			<form:input path="roadFullAddr" class="form-control" value="${up.roadFullAddr}" readonly="true"/>
			<form:errors path="roadFullAddr" cssClass="error"></form:errors>
			</div>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="phone">식당 번호</label>
			<form:input path="phone" class="form-control" value="${up.phone}"/>
			<form:errors path="phone" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-4">
			<label for="메뉴">대표 메뉴</label>
			<form:input path="menu" class="form-control" value="${up.menu}"/>
			<form:errors path="menu" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-6">
			<label for="restaurant">식당 상호</label>
			<form:input path="restaurant" class="form-control" value="${up.restaurant}"/>
			<form:errors path="restaurant" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="price">가격대</label>
			<form:input path="price" class="form-control" value="${up.price}"/>
			<form:errors path="price" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-5">
			<label for="time">오픈 시간</label>
			<form:input path="openTime" class="form-control" value="${up.openTime}"/>
			<form:errors path="openTime" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-5">
			<label for="time">마감 시간</label>
			<form:input path="closeTime" class="form-control" value="${up.closeTime}"/>
			<form:errors path="closeTime" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="rest">휴무일</label>
			<form:input path="rest" class="form-control" value="${up.rest}"/>
		</div>
		<div class="form-group col-xs-12 col-md-12">
			<label for="contents">추천 이유</label>
			<form:textarea path="contents" class="form-control" value="${up.contents}" rows="15"/>
		</div>
		<div class="btn-css">		
			<input type="submit" class=" btn btn-warning" value="수정하기" id="insertBtn">
			<input type="button" class="btn btn-danger" value="글 삭제하기" id="deleteBtn" title="${up.num}">
		</div>
	</form:form>
</div>
<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript" src="../js/placeWrite.js">
</script>
</html>