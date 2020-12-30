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
	body{
		font-size: .95em;
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: 400;
	}

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
		width: 73%;
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
		font-size:1.5em;
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
	.btn-div{
		float: right;
		margin-top: 40px;
	}
	/* 리뷰 작성 부분*/
	.place_review{
		position: relative;
	}
	.store_info h4{
		font-size: 1.467em;
		margin-top: 24px;
		padding-bottom: 5px;
		letter-spacing: -1px;
		font-weight: 700;
	}
	.txt_total{
		position: absolute;
		right: 0;
		top: -2px;
	}
	.store_info ul{
		padding-bottom: 0;
	}
	.txt_total ul{
		overflow: hidden;
	}
	.store_info ul li{
		color: #444;
		font-size: 1.467em;
		line-height: 22px;
		letter-spacing: -.50px;
		overflow: hidden;
	}
	.txt_total ul li{
		float: left;
		color: #999;
		padding-left: 12px;
		font-size: 1.4em;
	}
	.txt_total ul li span{
		color: #ff7400;
		padding-left: 0;
	}
	.tabs01{
		margin-top: 6px;
	}
	.tabs01 div{
		padding: 0;
		border-top: 3px solid #000;
	}
	.place_review .rList > ul{
		border-bottom: 1px solid #d7d7d7;
		margin-bottom: -1px;
	}
	.place_review .rList ul{
		padding-bottom: 0;
	}
	.place_review .rList ul li{
		position: relative;
		border-bottom: 1px solid #d7d7d7;
		padding: 20px 5px 17px;
		overflow: hidden;
		font-size: inherit;
	}
	.place_review .rList ul li .img{
		float: left;
		position: relative;
		width: 64px;
		height: 64px;
		background: url("../image/icon/bg_photo_basic01.png") no-repeat 0 0;
	}
	.place_review .rList ul li .img > img{
		position: absolute;
		left: 0;
		top:0;
		width: 100%;
		height: 100%;
		object-fit: cover;
		border-radius: 100px;
	}
	.place_review .rList ul li .cont{
		position: relative;
		margin-left: 88px;
	}
	.place_review .rList ul li .cont .name_data{
		overflow: hidden;
		color: #000;
	}
	.place_review .rList ul li .cont .name_data strong{
		float: left;
		font-weight: 400;
	}
	.newStarBox{
		overflow: hidden;
	}
	.newStarBox .newStar{
		position: relative;
		width: 80px;
		height: 17px;
		float: left;
		margin-top: 10px;
		margin-right: 10px;
		background: url("../image/icon/starUp.png") repeat-x 0 0;
		background-size: 16px 34px;
	}
	.newStarBox .newStar .bg{
		position: absolute;
		left: 0;
		top: 0;
		height: 17px;
		background: url("../image/icon/starUp.png") repeat-x 0 bottom;
		background-size: 16px 35px;
	}
	.place_review .rList ul li .cont .score_story span{
		display: block;
		font-weight: 700;
		font-size: 1.6em;
		color: #000;
		padding-top: 6px;
	}
	.newStarBox span{
		float: left;
	}
	.place_review .rList ul li .cont .score_story span strong{
		color: #ff7400;
		padding-right: 3px;
	}
	.place_review .rList ul li .cont .score_story p{
		color: #444;
		font-size: 1.2em;
		word-break:break-all;
		padding: 9px 0 0;
		line-height: 21px;
		letter-spacing: -1px;
	}
	/* 리뷰 부분 end */
	/* 더보기 */
	.btn_sMore{
		display: block;
		text-align: center;
		border-top: 1px solid #d7d7d7;
		height: 68px;
		line-height: 68px;
		color:#777;
		font-size: 1.417em;
		letter-spacing: -1px;
	}
	.btn_sMore span{
		padding-right: 30px;
		display: inline-block;
		background: url("../image/icon/bg_btn_arr04.png") no-repeat right center;
	}
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
							<strong class="rate-point">
								<c:if test="${avg gt 0.0}">
									<span>${avg}</span>
								</c:if>
								<c:if test="${avg eq 0.0}">
									<span>0.0</span>
								</c:if>
							</strong>
							<!-- 별점 부분 -->	
						</span>
						<div class="restaurant_action_button_wrap">
							<button class="review_writing_button" id="reviewBtn" title="${one.num}">
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
					</section>
				</div>
				<div class="section_section">
					<section class="section_section ownSection">
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
		</div>
		<!-- 리뷰 작성 정보 -->
		<div class="place_review store_info">
			<h4>맛집탐험 리뷰</h4>
			<div class="txt_total">
				<ul>
					<li>
						전체리뷰
						<span>${rCount}</span>
					</li>
				</ul>
			</div>
			<div class="tabs01">
				<div></div>
			</div>
			<div class="rList">
				<ul>
					<!-- 리뷰리스트 뿌리기 -->
					<c:forEach items="${rList}" var="review">
					<li>
						<span class="img">
							<img alt="리뷰남긴회원이미지" src="" width="64" height="64">
						</span>
						<div class="cont">
							<div class="cnt">
								<div class="name_data">
									<strong>${review.writer}</strong>
								</div>
								<div class="score_story">
									<div class="newStarBox">
										<div class="newStar">
											<div class="bg" style="width: 100%"></div>
										</div>
										<span>
											<strong>${review.star}.0</strong>
										</span>
									</div>
									<p>
										${review.contents}
									</p>
								</div>
							</div>
						</div>
					</li>
					</c:forEach>
					<!--  -->
				</ul>
				<a href="#" class="btn_sMore">
					<span>더보기</span>
				</a>
			</div>
		</div>
		<!-- 리뷰 작성 -->	
	</div>	
	<div class="btn-div">
		<button class="btn btn-warning" style="margin-right: 10px; width: 100px;" id="updateBtn" title="${one.num}">글 수정</button>
		<button class="btn btn-danger" style="width: 100px;" id="deleteBtn" title="${one.num}">글 삭제</button>
	</div>
</div>
<!--  -->
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">
	$("#updateBtn").click(function(){
		var num = $(this).attr("title");
		location.href="./placeUpdate?num="+num;
	});

	$("#deleteBtn").click(function(){
		var num = $(this).attr("title");
		location.href="./placeDelete?num="+num;
	});

	$("#reviewBtn").click(function(){
		var num = $(this).attr("title");
		location.href="../review/reviewWrite?num="+num;
	});
</script>
</html>