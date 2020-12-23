<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div id="header" style="position: fixed; width: 100%; top: 0px; left: 0px; z-index: 10;">
		<!-- 회원 헤더 -->
		<c:if test="${not empty member}">
			<div class="lang_word">
				<div class="lang_box">
					<span>님 환영합니다.</span>
				</div>
			</div>
		</c:if>
		<!-- END -->
			
		<!-- 로고, 로그인 -->
		<div class="header">
			<h1 class="logo ko" style="margin-top: 0px;">
				<a href="${pageContext.request.contextPath}/" target="_self">대한민국 NO.1 맛집 탐험</a>
			</h1>
			<div class="h_sch">
				<div class="input">
				<form action="${pageContext.request.contextPath}/place/placeList">
					<div>
						<label class="label" style="padding: 0; margin-bottom: 0;"></label>
						<!-- kind -->
						<input type="text" name="search" placeholder="우리 동네 맛집은 어디?">
					</div>

					<button class="btn_sch" style="border: none;">
						<div class="component-reponsive-image">
							<div class="component-reponsive-image-size">
								<img src="../image/icon/btn_h_sch.gif">
							</div>
						</div>
					</button>
				</form>	
				</div>
			</div>
			<div class="mem_or_not">
				<div class="not_mem">
					<div class="box">
						<!-- 로그인 -->
						<a href="#" class="login">로그인</a>
						<!-- 추후 쿠키 -->
						<a href="#layer_h_cont2" class="count">
							<span>
								<em>0</em>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 로고, 로그인 END -->
		
		<!-- 메뉴바 -->
		<div class="gnb ko" style="width: 1600px;">
			<ul>
				<li class="false">
					<a href="${pageContext.request.contextPath}/place/placeList">
						<span>맛집추천</span>
					</a>
				</li>
				<li class="false">
					<a href="#">
						<span>소통공간</span>
					</a>
				</li>
				<li class="false">
					<a href="#">
						<span>등업 게시판</span>
					</a>
				</li>
				<li class="false">
					<a href="#">
						<span>공지사항</span>
					</a>
				</li>
			</ul>
		</div>
		<!-- 메뉴바 END -->
	</div>
	<div id="emptyHeader" style="display: block; width: 100%; height: 158px;"></div>
</header>