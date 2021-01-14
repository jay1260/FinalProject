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
						<span class="se-fs-">${noticeOne.title}</span>
					</p>
				</div>
				<input type="text" value="${noticeOne.num}" id="noticeNum" hidden="hidden">
				<c:if test="${noticeOne.writer eq member.id}">
					<input type="button" class="btn btn-danger" value="삭제하기" id="deleteBtn">
				</c:if>
				<div class="se-documentWriter" style="font-weight: bold;">NO.1맛집탐험 관리자 <span style="margin-left: 12px; color: #bfbfbf;">${noticeOne.regDate}</span></div>
			</div>
		</div>
		<div class="se-documentTitle se-center" style="width: 800px; padding-top: 0;">
			<div class="pcol1">
				<div class="se-title-text">
					<p class="se-text se-text-center" style="text-align: left;">
						<span class="se-fs-" style="font-size: 22px;">${noticeOne.contents}</span>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript">
	$("#deleteBtn").click(function(){
		var num = $("#noticeNum").val();
		location.href="./noticeDelete?num="+num;
	});
</script>
</html>