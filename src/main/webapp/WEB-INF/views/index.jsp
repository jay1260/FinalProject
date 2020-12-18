<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="./template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="./template/header.jsp"></c:import>
	<!-- 섹션 top 부분 -->
	<section id="home-main-section-top" class="background-pale-peach">
		<div id="home-main-top">
			<!-- ------------------ -->
			<div class="home-main-desc">
				<h1 class="home-main-title">
					우리의 최고
					<br>
					맛집
				</h1>
				<p class="text-m" >
					어쩌구 저쩌구 , 맛있는 음식
					<br>
					어쩌구 저쩌구, 맛있는 음식
				</p>
			</div>
			<!-- ------------------ -->
			<div class="home-main-image-top"></div>
		</div>
	</section>
	<!-- 섹션 top END -->
	
	<!-- 섹션 second 부분 -->
	<section class="home-main-section">
		<div class="home-main-content">
			<div class="home-main-image home-main-image-01"></div>
			<div>
				<h1 class="home-main-title">
					우리 동네
					<br>
					최고의 맛집
				</h1>
				<p class="text-m">
					우리 동네의 어쩌구 저쩌구 어쩌구 저쩌구
				</p>
				<div class="home-buttons">
					<!-- 버튼 부분으로 사용 -->
					<a class="home-button text-1 text-bold" href="#">
						어디가 맛집일지 찾아봐요
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- 섹션 second End -->
	
	<!-- 섹션 third 부분 -->
	<section class="home-main-section background-pale-green">
		<div class="home-main-content home-main-reverse">
			<div class="home-main-image home-main-image-02"></div>
			<div>
				<h1 class="home-main-title">
					우리 같이
					<br>
					맛있는거 먹어요~
				</h1>
				<p class="text-m">
					우리 동네의 맛집을 찾아서 같이 추천해봐요~
				</p>
			</div>
		</div>
	</section>
	<!-- 섹션 third End -->
	
	<!-- 섹션 last 부분 -->
	<section class="home-main-section background-gray">
		<div class="home-hot-content">
			<h1 class="home-main-title text-center home-hot-title">
				요즘 떠오르는 맛집
			</h1>
			<div class="cards-wrap">
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food1.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">돼지고기 정말 맛있는 집</h2>
							<div class="card-info">
								목살 구이 맛집
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food2.jpeg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">100년을 이어갈 손맛</h2>
							<div class="card-info">
								추억의 돈가스
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food3.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">켜켜이 쌓인 재료의 하모니</h2>
							<div class="card-info">
								샌드위치 신흥 맛집
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food4.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">맛있는 식사 후에는?</h2>
							<div class="card-info">
								달콤한 디저트 맛집
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food5.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">인생 고기를 만나다!</h2>
							<div class="card-info">
								꼭 가야하는 소고기 맛집
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food6.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">생활의 달인!!</h2>
							<div class="card-info">
								김밥 맛집
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food7.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">칼국수에 매우 진심이다</h2>
							<div class="card-info">
								칼국수 맛집
							</div>
						</div>
					</a>
				</article>
				<article class="card-top">
					<a class="card-link" href="#">
						<div class="card-photo">
							<img alt="" src="../image/food/food8.jpg">
						</div>
						<div class="card-desc">
							<h2 class="card-title">프리미엄 숙성 한우</h2>
							<div class="card-info">
								오마카세 맛집
							</div>
						</div>
					</a>
				</article>
			</div>
		</div>
	</section>
	<!-- 섹션 last End -->
<c:import url="./template/footer.jsp"></c:import>	
</body>
</html>