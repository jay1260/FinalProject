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
	/* header 부분 */
	#writeBtn{
		float: right;
		margin-top: 50px;
		margin-right: 50px;
	}
	.basic-info-list{
		border-bottom: 1px solid #dbdbdb;
		background-color: #f7f7f7;
	}
	.basic-info-list>.inner{
		margin: 0 auto;
		padding: 38px 30px 20px 30px;
		width: 860px;
	}

	.basic-info-list .title{
		margin-top: 11px;
		font-size:26px;
		color: #000000;
		line-height: 1.2em;
		text-align: center;
	}
	/* header END */
	.table th{
		text-align: center;
	}
	.table td{
		text-align: center;
	}
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<!-- header 부분 -->
<header class="basic-info-list">
	<input type="button" class="btn btn-warning" value="소통하기" id="writeBtn">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title"><span style="color: #ff7400;">No.1 맛집탐험</span> 회원들의 소통공간입니다.</h1>
	</div>
</header>
<!-- header END -->

<div class="container" style="margin: 50px auto;">
	<table class="table table-hover">
		<thead>
			<tr>
				<th></th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
		</thead>
			
		<c:forEach items="${talkList}" var="talkList">
			<tbody>
				<tr>
					<td>${talkList.num}</td>
					<td style="font-weight: 700;"><a href="./talkSelect?num=${talkList.num}" style="opacity:0.5;">${talkList.title}</a></td>
					<td>${talkList.writer}</td>
					<td>${talkList.regDate}</td>
					<td>${talkList.hit}</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			<a href="./talkList?curPage=${i}" title="${i}">${i}</a>
		</c:forEach>
</div>


<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript">
	$("#writeBtn").click(function(){
		location.href="./talkWrite";
	});
</script>
</html>