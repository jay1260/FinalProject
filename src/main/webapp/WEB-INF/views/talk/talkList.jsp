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
	.writeBtn{
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
	.pager_div{
		text-align: center; 
		margin-top: 30px;
	}
	.pager_div a{
		display: inline-block;
		border: 1px solid transparent;
		padding: 6px 8px;
		font-family: verdana,'돋움', Dotum,sans-serif;
		font-weight: bold;
		vertical-align: middle;
		text-decoration: none;
		cursor: pointer;
	}
	a.next, a.before{
		font-family: "Times New Roman", Times, serif;
		border-color: #dedede;
		font-weight: normal;
		letter-spacing: -1px;
	}
	a.next, a.before{
		margin-left: 2px;
	}
	#pager_i:active{
		border-color:#e23c3c;
		color: #e23c3c;;
	}
	
	tr>td{
		padding: 14px 8px !important;
	}

	.notice_table tr>td{
		background-color: #f6f7fc;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<!-- header 부분 -->
<header class="basic-info-list">
	<input type="button" class="btn btn-warning writeBtn" value="공지하기" id="nWriteBtn">
	<input type="button" class="btn btn-warning writeBtn" value="소통하기" id="tWriteBtn">
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
		<c:forEach items="${noticeList}" var="noticeList">
			<tbody class="notice_table">
				<tr>
					<td></td>
					<td style="font-weight: 700;">
						<a href="../notice/noticeSelect?num=${noticeList.num}" style="opacity:0.9;"> ${noticeList.title}
						</a>
					</td>
					<td style="color: #ff8533; font-weight: 600;">NO.1 맛집탐험</td>
					<td>${noticeList.regDate}</td>
					<td>${noticeList.hit}</td>
				</tr>
			</tbody>
			
		</c:forEach>	
		<c:forEach items="${talkList}" var="talkList">
			<tbody>
				<tr>
					<td>${talkList.num}</td>
					<td style="font-weight: 700;">
						<a href="./talkSelect?num=${talkList.num}" style="opacity:0.5;"> ${talkList.title}
							<c:if test="${talkList.reCount gt 0}">
								<span style="color: red; margin-left: 3px;">[${talkList.reCount}]</span>
							</c:if>
						</a>
					</td>
					<td>${talkList.writer}</td>
					<td>${talkList.regDate}</td>
					<td>${talkList.hit}</td>
				</tr>
			</tbody>
			
		</c:forEach>
	</table>
	<div class="pager_div">
		<input type="text" value="${pager.curPage}" hidden="hidden" id="cur">	
		
		<c:if test="${pager.beforeCheck}">
			<a class="before" title="${pager.startNum-1}">◀◀</a>
		</c:if>
		<c:if test="${pager.curPage gt 1}">
			<a class="before" title="${pager.curPage-1}"><span>◀</span> 이전</a>
		</c:if>
		<c:if test="${not empty talkList}">	
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<a href="./talkList?curPage=${i}" title="${i}" id="pager_i">
					${i}
				</a>
			</c:forEach>
		</c:if>
		<c:if test="${pager.curPage lt pager.totalPage}">
			<a class="next" title="${pager.curPage+1}"> 다음<span>▶</span></a>
		</c:if>
		<c:if test="${pager.nextCheck}">
			<a class="next" title="${pager.lastNum+1}">▶▶</a>
		</c:if>	
	</div>	
</div>


<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript">

	$("#nWriteBtn").click(function(){
		location.href="./talkWrite";
	});

	$("#tWriteBtn").click(function(){
		location.href="./talkWrite";
	});

	$(".next").click(function(){
		var next = $(this).attr("title");
		$(this).attr("href","./talkList?curPage="+next);
	});
	$(".before").click(function(){
		var before = $(this).attr("title");
		$(this).attr("href","./talkList?curPage="+before);
	});
</script>
</html>