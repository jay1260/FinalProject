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
		margin-top:20px;
		margin-left: 30%;
		margin-right: 30%;
		border: none;
		padding: 14px 40px;
		border-radius: 12px;
		font-size: 16px;
	}
	
	.files{
		margin-bottom: 4px;
		border: none;

	}
	
	.addrBtn{
		background-color:white;
		margin: 3px 2px;
		padding: 0 15px;
		border: none;
		font-weight: 700;
		color: blue;
	}
	
	.file-div{
		margin-left: 23%;
	}
	
	.error{
		font-weight:bold;
		color: red;
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
	<form:form modelAttribute="placeVO" enctype="multipart/form-data" name="form" id="form">
		<div class="form-group col-xs-12 col-md-4">
			<label for="photo">대표사진을 첨부해주세요</label>
			<input type="file" class="form-control" id="photo" name="photo" accept="image/*" required="required">
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="title">제목</label>
			<span style="float: right;">40</span>
			<span style="float: right;">/</span>
			<span style="float: right;" id="keyValue">0</span>
			<form:input path="title" class="form-control" maxlength="40"/>
			<form:errors path="title" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-xs-12 col-md-10" hidden="hidden">
			<label for="writer">작성자</label>
			<input type="text" class="form-control" id="writer" name="writer" readonly="readonly">
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="address">★식당 주소★</label>
			<input type="button" onClick="goPopup();" value="+도로명 주소 찾기" class="addrBtn">
			<div id="list"></div>
			<div id="callBackDiv">	
			<form:input path="roadFullAddr" class="form-control" name="roadFullAddr" id="roadFullAddr" readonly="true"/>
			<form:errors path="roadFullAddr" cssClass="error"></form:errors>
		</div>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="phone">식당 번호</label>
			<form:input path="phone" class="form-control" maxlength="14"/>
			<form:errors path="phone" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-4">
			<label for="메뉴">대표 메뉴</label>
			<form:input path="menu" class="form-control" id="menu"/>
			<form:errors path="menu" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-6">
			<label for="restaurant">식당 상호</label>
			<form:input path="restaurant" class="form-control"/>
			<form:errors path="restaurant" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="price">가격대</label>
			<form:input path="price" class="form-control" placeholder="ex : 1인분 만원"/>
			<form:errors path="price" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-5">
			<label for="time">오픈 시간</label>
			<form:input path="openTime" class="form-control" maxlength="5" placeholder="ex _ 오후 1시 -> 1300"/>
			<form:errors path="openTime" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-sm-5">
			<label for="time">마감 시간</label>
			<form:input path="closeTime" class="form-control" maxlength="5" placeholder="ex _ 오후 10시 -> 2200"/>
			<form:errors path="closeTime" cssClass="error"></form:errors>
		</div>
		<div class="form-group col-xs-12 col-md-10">
			<label for="rest">휴무일</label>
			<form:input path="rest" class="form-control"/>
		</div>
		<div class="form-group col-xs-12 col-md-12">
			<label for="contents">추천하시는 이유를 작성해주세요.</label>
			<form:textarea path="contents" id="contents" rows="15" class="form-control"/>
		</div>
		<div class="form-group col-sm-6 file-div" style="text-align: center;" >
			<label for="files" style="margin-bottom: 10px; margin-top: 10px;">Ctrl, Shift를 이용하여 5장의 음식 사진을 첨부해주세요.</label>
			<input type="file" class="form-control files" id="image" name="files" accept="image/*" multiple size="5" onchange="myFunction(); preveal(event);" required="required">
		</div>
		<div class="form-group col-sm-6" style="width: 1100px;">
			<p id="demo" style="text-align: center;"></p>
			<p id="image_demo" style="text-align: center; font-size: 20px; color:#ff7400; font-weight: bold;"></p>
			<div id="image_container" style="width: 1100px; text-align: center;" ></div>
		</div>
		<div class="btn-css">		
			<input type="submit" class="col-sm-9 col-md-6 col-lg-8 btn btn-warning" value="등록하기" id="insertBtn">
		</div>
	</form:form>	
</div>
<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript" src="../js/placeWrite.js">	
</script>
</html>