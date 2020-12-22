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
	/* 공통 CSS 부분 */
	body{
		font-family: 'Nanum Gothic', sans-serif;
	}
	/* 공통 CSS END*/
	
	/* header 부분 */
	#writeBtn{
		float: right;
		margin-top: 50px;
		margin-right: 50px;
	}
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
	/* header END */
	
	/*container 부분*/
	.sub_cont_gray01{
		background: #fbfbfb;
		padding-top: 40px;
		margin-bottom: 0;
	}
	.sub_cont_gray01 .listTy1{
		padding-bottom: 0;
	}
	.listTy1{
		margin: 0 auto;
		width: 922px;
	}
	.title01{
		font-size: 1.3em;
		font-weight: 700;
		padding-bottom: 21px;
		letter-spacing: -1.25px;
	}
	.title01 span{
		font-weight: normal;
		color: #999;
		padding-left: 7px;
	}
	/*container END*/
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<!-- header 부분 -->
<header class="basic-info-list">
	<input type="button" class="btn btn-warning" value="맛집추천하기" id="writeBtn">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title">고객님들이 함께 엄선한 인기 맛집입니다.</h1>
	</div>
</header>
<!-- header END -->

<!-- Container 부분 -->
<div class="sub_cont_gray01" id="tabMove1">
	<div class="listTy1">
		<h3 class="title01">
			추천 맛집( ${num} )
			<span>원하시는 맛집을 함께 찾아보아요.</span>
		</h3>
	</div>
		<div id="result">	
		</div>
</div>

<button class="btn btn-danger" id="more">더보기</button>

<!-- Container END -->

<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">

	var curPage = 1;
	getList();
	
	$("#more").click(function(){
		curPage++;
		getList();
	});

	$("#writeBtn").click(function(){
		location.href="./placeWrite";
	});

	function getList(){
		$.ajax({
			url:"./placeTest",
			type:"GET",
			data:{curPage:curPage},
			success: function(data){
				$("#result").append(data);
			}
	
		});
	}

</script>
</html>