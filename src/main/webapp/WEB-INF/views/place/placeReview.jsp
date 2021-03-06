<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul class="rList">
		<!-- 리뷰리스트 뿌리기 -->
		<c:forEach items="${rList}" var="review" varStatus="status">
			<li>
				<span class="img">
					<img alt="리뷰남긴회원이미지" src="../upload/member/${review.memberFileVO.fileName}" width="64" height="64">
				</span>
				<div class="cont">
					<div class="cnt">
						<div class="name_data">
							<strong>${review.id}</strong>
							<em class="writer_role">${review.memberVO.level}등급</em>
						</div>
						<div class="score_story">
							<div class="newStarBox">
								<div class="newStar">
									<div class="bg" style="width: 100%; font-size: 16px; color:#ff9999;">
										<c:forEach var="rating" varStatus="status" begin="1" end="${review.star}">★</c:forEach><c:forEach var="rating" varStatus="status" begin="1" end="${5-review.star}">☆</c:forEach>
									</div>
								</div>
								<span>
									<strong>${review.star}.0</strong>
								</span>
							</div>
							<p>
								${review.contents}
							</p>
							<p style="display: inline-block;">
								${review.regDate}
							</p>
							<c:if test="${review.id eq member.id}">
								<p style="float: right;">
									<button class="del" title="${review.num}">리뷰_삭제</button>
								</p>
							</c:if>
						</div>
					</div>
				</div>
			</li>
			</c:forEach>
			<!--  -->
		</ul>
</body>
</html>