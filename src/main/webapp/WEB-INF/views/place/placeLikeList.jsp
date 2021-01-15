<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="UserRestaurantHistory__HistoryContainer">
	<ul class="UserRestaurantHistory__RestaurantList">
		<li class="UserRestaurantHistory__RestaurantItem">
		<!-- 찜 리스트 가져오기 -->
		<c:if test="${not empty member.id}">
		<c:forEach items="${likeList}" var="likeList" >
			<section class="RestaurantHorizontalItem">
				<a href="${pageContext.request.contextPath}/place/placeSelect?num=${likeList.placeLikeVO.placeLike}" class="RestaurantHorizontalItem__Link">
					<div class="RestaurantHorizontalItem__Picture" style="background-image: url('../upload/place/${likeList.placeFileVO.fileName}');" ></div>
				</a>
				<div class="RestaurantHorizontalItem__Info">
					<a href="${pageContext.request.contextPath}/place/placeSelect?num=${likeList.placeLikeVO.placeLike}">
						<h3 class="RestaurantHorizontalItem__Name" style="color: #ff7400; font-weight: 800;">${likeList.restaurant}</h3>
					</a>
					<span class="RestaurantHorizontalItem__MetroAndCuisine">${likeList.menu}</span>	
				</div>
				<button class="RestaurantHorizontalItem__WannagoButton likeDelete" title="${likeList.placeLikeVO.num}" style="height: 53px;">X</button>
			</section>
		</c:forEach>	
		<!--  -->
		</c:if>
		<c:if test="${not empty member.id && empty likeList}">
			<span style="color: #ff7400; font-weight: 700;">회원님의 찜 목록은 비어있습니다.</span>
			<br>
			<a href="/place/placeList"><span style="font-size: 18px;" > 찜 하러 가볼까요? </span></a>
		</c:if>
		<c:if test="${empty member.id}">
			<a href="/member/memberLogin">
				<span style="color: #ff7400; font-weight: 700;">로그인 후 확인 가능합니다.</span>
			</a>
		</c:if>
		</li>
	</ul>	
</div>

