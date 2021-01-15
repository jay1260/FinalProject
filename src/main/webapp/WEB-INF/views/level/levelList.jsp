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

 .container{
 	width: 70%;
 	margin: 0 auto;
 }
 .grade{
 	width: 15%;
 	margin: 0 auto;
 }
 
 .writebtn{
 	float: right;
 }
 body{
		font-family: 'Nanum Gothic', sans-serif;
	}
.basic-info-list .title{
		margin-top: 11px;
		font-size:26px;
		color: #000000;
		line-height: 1.2em;
		text-align: center;
	}
.title_2{
		margin-top: 11px;
		font-size:15px;
		color: #000000;
		line-height: 1.2em;
		text-align: center;
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
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>

<header class="basic-info-list">
	<div class="inner" style="padding-bottom: 10px;">
		<h1 class="title">등업게시판</h1>
		<h4 class="title_2">등업하여 더 많은 음식점을 추천해주세요</h4>
	</div>
</header>
<div class="container" style="margin: 50px auto;">
  <form action="./levelWrite" id="frm" name="levelSelect">
  <input type="hidden" name="curPage" id="curPage" value=1>
  	<table class="table table-hober">
  	<tr>
  		<td>Num</td><td>Title</td><td>Writer</td><td>Date</td><td>Hit</td>
  	</tr>
	<c:forEach items="${list}" var="level">
  		<tr>
  			<td>${level.num}</td>
  			<td>
  				<a href ="./levelSelect?num=${level.num}">
  					<c:catch>
  						<c:forEach begin="1" end="${level.depth}"> ㄴ</c:forEach>
  					</c:catch>
  					${level.title}
  				</a>
  			</td>
  			<td>${level.writer}</td>
  			<td>${level.regDate}</td>
  			<td>${level.hit}</td>
  		</tr>
	</c:forEach>
 	
  </table>
      <c:if test="${member.level eq 3 || member.level eq 2}">
    <div class="writebtn">
  		<input type = "submit" class = "btn btn-warning" value="글쓰기" id="write" >
	</div>
   </c:if>
    </form>
 </div>   

	<ul class="pagination">
	  <c:if test="${pager.beforeCheck}">
	  	<li><a href="./levelList?curPage=${pager.startNum-1}" class="lelist" title="${pager.startNum-1}">Pre</a></li>
	  </c:if>		
	  <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	  	<li><a href="./levelList?curPage=${i}&search=${parger.search}" class="lelist" title="${i}" >${i}</a></li>
	  </c:forEach>
	  
	  <c:if test="${pager.nextCheck}">
	  	<li><a href="./levelList?curPage=${pager.startNum+1}" class="lelist" title="${pager.lastNum+1}">Next</a></li>
	  </c:if>
  	</ul>

</div>
<c:import url="../template/footer.jsp"></c:import>
</body>

<script type="text/javascript">
$(".lelist").click(function(){
	var curPage = $(this).attr("title");
	$("#curPage").val(curPage);
	$("#frm").submit();
});	

$("#write").click(function(){
	location.href="./levelWrite";	
});

</script>
</html>