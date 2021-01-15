<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div id="header" style="position: fixed; width: 100%; top: 0px; left: 0px; z-index: 10;">
		<!-- 회원 헤더 -->
		<c:if test="${not empty member}">
			<div class="lang_word">
				<div class="lang_box">
					<span>${member.id}님</span>
						<a href="${pageContext.request.contextPath}/member/memberPage" class="reset">내 정보</a>
					<c:if test="${member.id eq 'admin'}">
						<a href="${pageContext.request.contextPath}/member/adminPage" class="reset">회원관리</a>
					</c:if>
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
						<c:choose>
							<c:when test="${not empty member}">
							<a href="${pageContext.request.contextPath}/member/memberLogout" class="login">로그아웃</a>
							</c:when>
							<c:when test="${empty member}"><a href="${pageContext.request.contextPath}/member/memberLogin" class="login">로그인</a></c:when>
						</c:choose>
						
						<input type="text" value="${member.id}" id="memberID" hidden="hidden">
						<!-- 추후 쿠키 -->
						<!-- Trigger/Open The Modal -->
						<c:if test="${not empty member.id}">
						<button id="myBtn" class="count">
							<span>
								<em id="likeCount">${placeLikeCount}</em>
							</span>
						</button>
						</c:if>
						<c:if test="${empty member.id}">
						<button id="myBtn" class="count">
							<span>
								<em>0</em>
							</span>
						</button>
						</c:if>
						
						<!-- The Modal -->
						<div id="myModal" class="modal">
						
						  <!-- Modal content -->
						  <div class="modal-content">
						    <span class="close">&times;</span>
						    회원님의 찜 목록입니다.
							<div id="likeResult" style="margin-top: 10px;"></div>
						  </div>
						</div>
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
					<a href="${pageContext.request.contextPath}/talk/talkList">
						<span>소통공간</span>
					</a>
				</li>
				<li class="false">
					<a href="${pageContext.request.contextPath}/level/levelList">
						<span>등업 게시판</span>
					</a>
				</li>
			</ul>
		</div>
		<!-- 메뉴바 END -->
	</div>
	<div id="emptyHeader" style="display: block; width: 100%; height: 158px;"></div>
<script type="text/javascript">
	var modal = document.getElementById("myModal");
	var btn = document.getElementById("myBtn");
	var span = document.getElementsByClassName("close")[0];

	$("#likeResult").on("click",".likeDelete", function(){
		var likeDeleteNum = $(this).attr("title");
		$.ajax({
			url:"../place/placeLikeDelete?num="+likeDeleteNum,
			type:"POST",
			data:{likeDeleteNum:likeDeleteNum},
			success:function(data){
				data=data.trim();
				if(data>0){
					alert("찜 삭제!!");
					$("#likeResult").html('');
					getLikeList();
				}
			}
		});
	});
	
	function getLikeList(){
		var id = $("#memberID").val();
		
		$.ajax({
			url:"../place/placeLikeList?id="+id,
			type:"GET",
			data:{id:id},
			success:function(data){
				$("#likeResult").append(data);
			}
		})
	}

	$("#myBtn").click(function(){
		getLikeList();
	});
	
	btn.onclick = function() {
	  modal.style.display = "block";
	}
	
	span.onclick = function() {
	  modal.style.display = "none";
	  history.go(0);
	}
	
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	    history.go(0);
	  }
	}
</script>
</header>
