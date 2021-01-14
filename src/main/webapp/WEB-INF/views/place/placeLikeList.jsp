<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="UserRestaurantHistory__HistoryContainer">
	<ul class="UserRestaurantHistory__RestaurantList">
		<li class="UserRestaurantHistory__RestaurantItem">
		<!-- 찜 리스트 가져오기 -->
		<c:forEach items="${likeList}" var="likeList" >
			<div>${likeList.placeLike}</div>
		</c:forEach>
			<section class="RestaurantHorizontalItem">
				<a href="#" class="RestaurantHorizontalItem__Link">
					<div class="RestaurantHorizontalItem__Picture" style="background-image: url('../image/food/food1.jpg');"></div>
				</a>
				<div class="RestaurantHorizontalItem__Info">
					<a href="#">
						<h3 class="RestaurantHorizontalItem__Name">식당이름작성</h3>
					</a>
					<span class="RestaurantHorizontalItem__MetroAndCuisine">메뉴</span>
				</div>
			</section>
		<!--  -->
		</li>
	</ul>
</div>
