<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
	body{
		font-size: 14px;
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
		border-bottom: 1px solid #e9e9e9;
	}
	.restaurant-detail>header .title{
		display: block;
		box-sizing: border-box;
		position: relative;
		max-width: 80%;
		font-size: 24px;
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
		font-size: 24px;
		font-weight: bold;
	}

	.restaurant-detail>header .title>.rate-point{
		color:#ff792a;
		margin-left: 5px;
		font-weight: bold;
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
	.restaurant-detail>header .review_liking_button_icon{
		display: block;
		width: 32px;
		height: 32px;
		background-image: url("../image/icon/bg_ico_b_favorit.png");
		background-size: cover;
		background-repeat: no-repeat;
	}
	.restaurant-detail>header .review_writing_button_text{
		margin-top: 12px;
		line-height: 1.3;
		color: #9B9B9B;
	}
	.restaurant-detail>header .status{
		font-size: 0.688rem;
		color:#9b9b9b;
		margin-left: 3px;
	}
	.restaurant-detail>header .status .status_hit{
		background: url("../image/icon/icon_hit.png") no-repeat 0 center;
		background-size: 25px 19px;
		padding-left: 29px;
		font-size: 12px;
	}

	.review_writing_button span:hover {
		color: #ff7400;
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
		font-size: 14px;
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
		font-weight: bold;
	}
	.writer_role{
		float: left;
		height: 18px;
		line-height: 17px;
		font-style: normal;
		text-align: center;
		background: #ff7400;
		color: #fff;
		font-size: .917em;
		letter-spacing: normal;
		padding: 0 6px;
		margin: 2px 0 0 5px;
		border-radius: 2px;
	}
	.newStarBox{
		overflow: hidden;
	}
	.newStarBox .newStar{
		position: relative;
		width: 80px;
		height: 17px;
		float: left;
		margin-top: 4.5px;
		margin-right: 10px;
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
		word-break:break-all;
		padding: 9px 0 0;
		line-height: 21px;
		letter-spacing: -1px;
		font-size: 12px;
	}
	
	/* 리뷰 부분 end */
	
	/*수정 버튼*/

	#updateBtn{
		width: 200px; 
		margin-top:58px;
		background-color:white;
		color:#ff7400;
		display: block;
		border:none;
		outline: 0;
		height:130px;
		font-size: 20px;
	}
	
	/* 더보기 */
	.btn_sMore{
		display: block;
		margin:0 auto;
		border-top: 1px solid #d7d7d7;
		height: 68px;
		line-height: 68px;
		color:#777;
		font-size: 1.417em;
		letter-spacing: -1px;
	}
	.btn_sMore span{
		padding-right: 30px;
		font-size:18px;
		display: inline-block;
		color:#ff7400;
		background: url("../image/icon/bg_btn_arr04.png") no-repeat right center;
	}
	.review-a{
		color: #ff7400; 
		font-size: 20px;
	}
	.review-a:hover, .review-a:active{
		text-decoration: none;
		color:#ff7400;
		opacity: 0.6;
		font-size: 22px;
	}

	/* 더보기 */
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
				<c:forEach items="${one.placeFilesVO}" var="file">
					<div class="owl-item" style="width: 300px; margin-top:4px;">
						<figure class="list-photo">
							<figure class="restaurant-photos-item" style="margin-bottom: 4px;">
								<img alt="" src="../upload/place/${file.fileName}" class="center-croping">
							</figure>
						</figure>
					</div>
				</c:forEach>
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
							<span class="restaurant_name">${one.restaurant}</span>
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
							<form action="./placeLike" method="post" id="likeFrm">
							
							<input type="text" value="${member.id}" id="likeMember" name="id" hidden="hidden">
							<input type="text" value="${one.num}" id="likePlace" name="placeLike" hidden="hidden">
							</form>
							<button class="review_writing_button" id="likeBtn">
								<i class="review_liking_button_icon"></i>
								<span class="review_writing_button_text">가게 찜</span>
							</button>
						</div>
						
					</div>
					<div class="status">
						<span class="status_hit">${one.hit}</span>
					</div>
				</header>
				<table class="info no_menu">
					<caption>식당 상세 정보</caption>
					<tbody>
						<tr class="select_info">
							<th>주소</th>
							<td>${one.roadFullAddr}</td>
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
						<tr>
							<th>가게번호</th>
							<td>${one.phone}</td>
						</tr>
					</tbody>
				</table>
			</section>
			<!-- 가게 상세 정보 -->
			<section class="restaurant_introduce only">
				<div class="section_section">
					<section class="section_section ownSection">
						<h3 class="section_sectionTitle" style="margin-top: 10px;">제목</h3>
						<input type="text" value="${one.writer}" id="writer" hidden="hidden">
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
			<h4><span style="color: #ff7400;">No.1</span> 맛집탐험 리뷰</h4>
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
			<c:if test="${rCount eq 0}">
				<h4 style="text-align: center; margin-bottom: 24px;" >
					<a href="../review/reviewWrite?num=${one.num}" class="review-a">솔직한 평가를 기다립니다.</a>
					<span style="display: block; margin-top: 15px; font-size: 14px;">↑ 리뷰쓰러 가기 ↑</span>
				</h4>
			</c:if>
			<c:if test="${rCount gt 0}">
			<div class="rList" id="listResult">
				<!-- 리뷰 정보 확인 -->
			</div>
			</c:if>
			
			<c:if test="${pager.nextCheck}">
				<button class="btn_sMore" id="sMoreBtn"><span>더보기</span></button>
			</c:if>
			
			<div id="total" title="${pager.totalPage}" hidden="hidden"></div>
		</div>
		<!-- 리뷰 작성 -->	
	</div>	
	<c:if test="${member.id eq one.writer}">
		<div class="btn-div">
			<button class="btn btn-warning" id="updateBtn" title="${one.num}">글 수정</button>
		</div>
	</c:if>

</div>
<!--  -->
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">

	var curPage=1;
	getList();
	var total = $("#total").attr("title");

	// 찜 버튼
	$("#likeBtn").click(function(){
		var member = $("#likeMember").val();
		var writer = $("#writer").val();
		var placeLike = $("#likePlace").val();

		if(member === writer){
			alert("본인 게시글에 찜은 불가합니다.");
			return false;
		}

		$.post("./placeLikeConfirm?placeLike="+placeLike+"&id="+member,{placeLike:placeLike, member:member},function(data){
			data=data.trim();
			if(member && data == 0){
				$("#likeFrm").submit();
			}
			else if(data == 1){
				alert("이미 찜한 가게입니다.");
			}
			else{
				var a = confirm("로그인 후 이용가능합니다. 로그인 하시겠습니까?");
				if(a){
					location.href="../member/memberLogin";
				}else{
					
				}
			}
		});

	});

	
	// 더보기 버튼 클릭
	$("#sMoreBtn").click(function(){	
		curPage++;
		getList();

		if(total == curPage){
			$(this).hide();
		}

		console.log("total:"+total);
		console.log("curPage:"+curPage);
		
	});

	// 글 수정 버튼
	$("#updateBtn").click(function(){
		var num = $(this).attr("title");
		location.href="./placeUpdate?num="+num;
	});

	// 리뷰쓰기 버튼
	$("#reviewBtn").click(function(){
		var num = $(this).attr("title");
		location.href="../review/reviewWrite?num="+num;
	});

	// 리뷰 삭제 버튼
	$("#listResult").on("click", ".del", function(){
		var num = $(this).attr("title");
		
		$.ajax({
			url:"../review/reviewDelete",
			type:"POST",
			data:{num:num},
			success:function(data){
				data=data.trim();
				if(data>0){
					alert("리뷰 삭제");
					$("#listResult").html(''); // 초기화
					curPage=1;	// curPage 초기화
					getList();	// List 호출
				}
			}
		});
	});

	// 리뷰 목록 불러오기
	function getList(){
		var num = $("#reviewBtn").attr("title");
		
		$.ajax({
			url:"./placeReview?num="+num,
			type:"GET",
			data:{curPage:curPage},
			success:function(data){
				$("#listResult").append(data);
			}
		});
	}
</script>
</html>