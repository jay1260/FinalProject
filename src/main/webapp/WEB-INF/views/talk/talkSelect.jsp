<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<style type="text/css">
	.se-documentTitle.se-component{
		margin-top: 0;
	}
	.se-documentTitle{
		position: relative;
		margin-bottom: 40px;
	}
	.se-documentTitle .se-content{
		position: relative;
	}
	.se-content{
		margin: 0 auto;
		max-width: 100%;
		padding-right: 40px;
		padding-left: 40px;
	}
	.se-documentTitle .se-center{
		padding-top: 65px;
		padding-bottom: 31px;
	}
	.se-center{
		margin-right: auto;
		margin-left: auto;
	}
	.pcol1{
		font-size: 14px;
	}
	.se-text-center{
		text-align: center;
	}
	.se-documentTitle .se-fs-{
		font-size: 32px;
		line-height: 48px;
		font-family: "Times New Roman", Times, serif;
	}
	.se-documentWriter{
		margin-left:15px;
		margin-top: 40px;
	}
	.se-button{
		margin-right:305px;
		text-align: right;
	}
	#deleteBtn{
		float:right;
		margin-top:32px;
		padding: 8px 16px;
		border-radius: 12px;
	}
	.u_cbox_btn_upload{
		position: absolute;
		bottom: -1px;
		right: -1px;
		z-index: 10;
		width: 68px;
		height: 45px;
		font-size: 15px;
		font-weight: 700;
		border-color:#eaeaea;
		border-right-color:transparent;
		border-bottom-color:transparent;
		background: 0 0;
		line-height: 43px;
		color: #444;
		margin-right: 15px;
	}

	.name_data{
		margin:30px 0 25px 10px;
	}
	
	.score_story{
		margin-left: 10px;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<div class="se-component se-documentTitle">

	<div class="se-content">
		<div class="se-documentTitle se-center" style="border-bottom: 1px solid #d9d9d9; width: 900px;">
			<div class="pcol1">
				<div class="se-title-text">
					<p class="se-text se-text-center">
						<span class="se-fs-">${talkOne.title}</span>
					</p>
				</div>
				<input type="button" class="btn btn-danger" value="삭제하기" id="deleteBtn">
				<div class="se-documentWriter">${talkOne.writer} <span style="margin-left: 8px; color: #bfbfbf;">${talkOne.regDate}</span></div>
			</div>
		</div>
		<div class="se-documentTitle se-center" style="width: 800px; padding-top: 0;">
			<div class="pcol1">
				<div class="se-title-text">
					<p class="se-text se-text-center" style="text-align: left;">
						<span class="se-fs-" style="font-size: 22px;">${talkOne.contents}</span>
					</p>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<form action="">
			<div class="form-group col-xs-12 col-md-10" style="margin: 50px 0 30px 100px;">
				<label for="contents">댓글 작성</label>
				<textarea class="form-control" rows="10" id="contents" name="contents"></textarea>
				<div>
					<input type="button" class="u_cbox_btn_upload" value="등록"> 
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<h3 style="margin: 50px 0 15px 110px;">댓글</h3>
		<div class="form-group col-xs-12 col-md-10" style="margin: 5px 0 30px 100px;">
			<ul class="rList" style=" border: 1px solid #d9d9d9;">
			<!-- 리뷰리스트 뿌리기 -->
				<li style="border-bottom: 1px solid black; width: 96%; margin: 0 auto;">
					<div class="cont">
						<div class="cnt">
							<div class="name_data">
								<strong>작성자</strong>
								<p style="display: inline-block; margin-left: 20px;">
									댓글 작성 날짜
								</p>
							</div>
							<div class="score_story">
								<p style="margin-bottom: 15px; font-size: 16px;">
									댓글을 뭐라고 작성할까요 뭐라고 작성을 할까요?
								</p>
								
								<!-- 
								<c:if test="${review.id eq member.id}">
									<p style="float: right;">
										<button class="del" title="${review.num}">리뷰_삭제</button>
									</p>
								</c:if>
								 -->
							</div>
						</div>
					</div>
				</li>
				<!--  -->
			</ul>
		</div>
	</div>
</div>

<c:import url="../template/footer.jsp"></c:import>

</body>
</html>