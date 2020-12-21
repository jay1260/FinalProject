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
	header, h1{
		font-size: 100%;
	}
	h1, h2, h3, strong, th{
		font-weight: normal;
	}
	button{
		appearance:none;
		cursor: pointer;
		border: 0px;
		border-radius: 0;
		background-color: transparent;
	}
	table{
		border-collapse: collapse;
		border-spacing: 0;
	}
	caption{
		display: none;
		position: absolute;
		width: 0;
		height: 0;
		font-size: 0;
		overflow: hidden;
		visibility: hidden;
	}
	/* 이미지 부분 */
	.restaurant-photos{
		width: 100%;
		overflow: hidden;
	}
	.owl-carousel{
		position: relative;
		width: 100%;
	}
	.owl-carousel .owl-wrapper-outer{
		overflow: hidden;
		position: relative;
		width: 100%;
	}
	.restaurant-photos .owl-item{
		position: relative;
	}
	.owl-carousel .owl-item{
		float: left;
	}
	.restaurant-photos .list-photo_wrap .list-photo{
		width: 20%;
		min-width: 300px;
	}
	.restaurant-photos .restaurant-photos-item{
		height: 340px;
		border-left: 6px solid #fff;
		display: block;
		position: relative;
		width: 100%;
		overflow: hidden;
		background-position: 50% 50%;
		background-size: cover;
	}
	.center-croping{
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		object-fit:cover;
	}
	img{
		color: rgba(255,255,255,0);
		text-indent: -9999px;
	}
	img{
		border: none;
		vertical-align: top;
	}
	/* 이미지 부분 END*/
	
	/* 내용 부분 */
	.column-wrapper{
		display: flex;
		border-top: 6px solid #fff;
		width: 70%;
		margin: 30px auto 0;
	}
	.column-contents{
		background-color: #fff;
		flex: 1;
		float: left;
		padding: 0 20px;
		height: 100%;
	}
	.column-contents>.inner{
		box-sizing: border-box;
	}
	.restaurant-detail{
		margin: 11px 0 14px 0;;
		border-bottom: 1px solid #e9e9e9;
	}
	.restaurant-detail>header{
		position: relative;
		padding-bottom: 10px;
		min-height: 74px;
	}
	.restaurant-detail>header .title{
		display: block;
		box-sizing: border-box;
		position: relative;
		max-width: 80%;
		font-size: 1.8rem;
		line-height: 46px;
		color: #000000;
	}
	.restaurant-detail>header .restaurant_title_wrap{
		display: flex;
	}
	.restaurant-detail>header .title .restaurant_name{
		display: inline-block;
		max-width: 100%;
		word-break:break-all;
	}
	.restaurant-detail>header .title>.rate-point.expected{
		color: #e9e9e9;
	}
	.restaurant-detail>header .title>.rate-point{
		color:#ff792a;
		margin-left: 5px;
	}
	.restaurant-detail>header .restaurant_action_button_wrap{
		display: flex;
		margin-left: auto;
	}
	.restaurant-detail>header .review_writing_button{
		display: -webkit-flex;
		flex-direction: column;
		-webkit-align-items:center;
		-webkit-box-align:center;
		margin: 0 19px 0 0;
	}
	.restaurant-detail>header .review_writing_button_icon{
		display: block;
		width: 32px;
		height: 32px;
		background-image: url("../image/icon/review_writing_icon.png");
		background-size: cover;
		background-repeat: no-repeat;
	}
	.restaurant-detail>header .review_writing_button_text{
		margin-top: 12px;
		line-height: 1.3;
		color: #9B9B9B;
	}
	
	/* 상세정보 */
	.restaurant-detail .info{
		padding: 20px 0;
		position: relative;
		display: block;
	}
	.restaurant-detail .info th{
		width: 110px;
		color: rgba(79,79,79,0.6);
		line-height: 1.7;
		text-align: left;
		vertical-align: top;
		padding-right: 10px;
		padding-bottom: 5px;
	}
	.restaurant-detail .info td{
		color: #4f4f4f;
		line-height: 1.7;
		text-align: left;
		vertical-align: middle;
		padding-bottom: 5px;
	}
	/* 추천 이유 부분*/
	.section_section:first-child{
		border-top: 0;
	}
	.ownSection{
		margin-top: 20px;
	}
	.section_section{
		position: relative;
		margin-bottom: 25px;
	}
	.section_sectionTitle{
		width: 110px;
		margin-right: 10px;
		font-size: 14.4px;
		color: #4f4f4f99;
	}
	.section_sectionContent{
		max-width: 607px;
		float: left;
		margin-bottom: 30px;

	}
	.section_own{
		line-height: 25px;
	}
	.section_ownDesc{
		font-size: 15px;
		color: #4f4f4f;
	}
	/* 내용 부분 END*/
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<!-- 메인 이미지 부분 -->
<aside class="restaurant-photos">
	<div class="list-photo_wrap owl-carousel owl-theme" style="opacity: 1; display: block;">
		<div class="owl-wrapper-outer">
			<div class="owl-wrapper" style="width: 3000px; left: 0px; display: block; transform: translate3d(0px, 0px, 0px); transition: all 200ms ease 0s;">
				<!-- 이미지 반복 최대 5개 -->
				<div class="owl-item" style="width: 300px;">
					<figure class="list-photo">
						<figure class="restaurant-photos-item">
							<img class="center-croping" alt="" src="../image/food/food8.jpg">
						</figure>
					</figure>
				</div>
				<!-- 이미지 반복 !!!!1 -->
				<div class="owl-item" style="width: 300px;">
					<figure class="list-photo">
						<figure class="restaurant-photos-item">
							<img class="center-croping" alt="" src="../image/food/food8.jpg">
						</figure>
					</figure>
				</div>
				<div class="owl-item" style="width: 300px;">
					<figure class="list-photo">
						<figure class="restaurant-photos-item">
							<img class="center-croping" alt="" src="../image/food/food8.jpg">
						</figure>
					</figure>
				</div>
				<div class="owl-item" style="width: 300px;">
					<figure class="list-photo">
						<figure class="restaurant-photos-item">
							<img class="center-croping" alt="" src="../image/food/food8.jpg">
						</figure>
					</figure>
				</div>
				<div class="owl-item" style="width: 300px;">
					<figure class="list-photo">
						<figure class="restaurant-photos-item">
							<img class="center-croping" alt="" src="../image/food/food8.jpg">
						</figure>
					</figure>
				</div>
			</div>
		</div>
	</div>
</aside>
<!-- 이미지 부분 END -->
<!-- Contents 부분 -->
<div class="column-wrapper">
	<div class="column-contents">
		<div class="inner">
			<!-- 식당 상세정보 -->
			<section class="restaurant-detail">
				<header>
					<div class=restaurant_title_wrap>
						<span class="title">
							<h1 class="restaurant_name">${one.restaurant}</h1>
							<!-- 별점 부분 -->
							<strong class="rate-point expected">
								<span>0.0</span>
							</strong>
							<!-- 별점 부분 -->	
						</span>
						<div class="restaurant_action_button_wrap">
							<button class="review_writing_button">
								<i class="review_writing_button_icon"></i>
								<span class="review_writing_button_text">리뷰쓰기</span>
							</button>
						</div>
					</div>
				</header>
				<table class="info no_menu">
					<caption>식당 상세 정보</caption>
					<tbody>
						<tr class="select_info">
							<th>주소</th>
							<td>${one.address}</td>
						</tr>
						<tr class="select_info">
							<th>전화번호</th>
							<td>${one.phone}</td>
						</tr>
						<tr>
							<th>메뉴</th>
							<td>
								<span>${one.menu}</span>
							</td>
						</tr>
						<tr>
							<th>가격대</th>
							<td>${one.price}</td>
						</tr>
						<tr>
							<th>휴무일</th>
							<td>${one.rest}</td>
						</tr>
						<tr>
							<th style="vertical-align: top;">영업시간</th>
							<td>${one.openTime} - ${one.closeTime}</td>
						</tr>
					</tbody>
				</table>
			</section>
			<!-- 가게 상세 정보 -->
			<section class="restaurant_introduce only">
				<div class="section_section">
					<section class="section_section ownSection">
						<h3 class="section_sectionTitle" style="margin-top: 10px;">제목</h3>
						<div class="section_sectionContent">
							<div class="section_own">
								<p class="section_ownDesc"></p>
								<p>${one.title}</p>
							</div>
						</div>
						<h3 class="section_sectionTitle" style="margin-top: 10px; color: red;" >추천 이유</h3>
						<div class="section_sectionContent">
							<div class="section_own">
								<p class="section_ownDesc"></p>
								<p>${one.contents}</p>
							</div>
						</div>
					</section>
				</div>	
			</section>
			
			<!-- 리뷰 작성 정보 -->
			
			<!-- 리뷰 작성 -->	
		</div>
	</div>	
</div>
<!--  -->
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>