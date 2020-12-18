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
		background-color: #000000;
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
	.listTy1 ul{
		overflow: hidden;
		display: table;
		width: 100%;
		table-layout: fixed;
	}
	.listTy1 > ul > li{
		min-height: 402px;
	}
	.listTy1 ul li{
		float: left;
		width: 280px;
		display: table-cell;
		margin-right:40px;
		vertical-align: top;
	}
	.listTy1 ul li a{
		display: block;
		text-decoration: none;
	}
	.listTy1 ul li .img{
		display: block;
		height: 224px;
		position: relative;
		overflow: hidden;
		background: url("../image/icon/bg_no_data01.jpg") no-repeat center center;
	}
	.listTy1 ul li .img > img{
		position: absolute;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		object-fit: cover;
	}
	.listTy1 ul li .cnt{
		padding-right: 20px;
		position: relative;
	}
	.listTy1 ul li .score{
		display: block;
		font-size: 2.3em;
		color: #ff7400;
		font-weight: 700;
		font-style: normal;
		line-height: 22px;
		padding-top: 18px;
		letter-spacing: -1px;
	}
	.listTy1 ul li .box_tit{
		position: relative;
	}
	.listTy1 ul li .store{
		display: block;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		font-size: 1.5em;
		line-height: 24px;
		padding: 12px 0 6px;
		font-weight: 700;
		letter-spacing: -1px;
		margin-right: 48px;
	}
	.listTy1 ul li ul{
		display: inherit;
		padding-top: 1px;
		letter-spacing: -.50px;
	}
	.listTy1 ul li p{
		color: #444;
		font-size: 1.155em;
		letter-spacing: -.50px;
		padding-top: 5px;
		margin-bottom: 4px;
		line-height: 22px;
		font-weight: 400;
		height: 42px;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 2;
		-webkid-box-orient: vertical;
	}
	.listTy1 ul li:nth-child(3n){
		margin-right: 0;
	}
	/*container END*/
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<!-- header 부분 -->
<header class="basic-info-list">
	<input type="button" class="btn btn-info" value="맛집추천하기" id="writeBtn">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title">고객님들이 함께 엄선한 인기 맛집입니다.</h1>
	</div>
</header>
<!-- header END -->

<!-- Container 부분 -->
<div class="sub_cont_gray01" id="tabMove1">
	<div class="listTy1">
		<h3 class="title01">
			추천 맛집(개시글 수)
			<span>고객님들이 함께 엄선한 인기 맛집입니다.</span>
		</h3>
		<!-- 리스트 -->
		<ul>
			<li>
				<div class="cont">
					<a href="#">
						<span class="img">
							<img alt="" src="" width="560" height="448">
						</span>
						<div class="cnt">
							<!-- 별점 기능 구현 시도 -->
							<em class="score">0.0</em>
							<!-- -------------- -->
							<!-- 식당 이름 -->
							<div class="box_tit">
								<strong class="store">식당이름</strong>
							</div>
							<!-- 식당 주소 -->
							<ul>
								<li>주소</li>
							</ul>
							<!-- 식당 정보 -->
							<p>
								<!-- 영업시간 -->
								09:00 ~ 11:00
								<br>
								<!-- 메뉴 -->
								고기
							</p>
						</div>
					</a>
				</div>
			</li>
		</ul>
	</div>
</div>
<!-- Container END -->

<c:import url="../template/footer.jsp"></c:import>
</body>
</html>