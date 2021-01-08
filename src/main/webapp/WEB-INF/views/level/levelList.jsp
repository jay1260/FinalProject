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
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>

<div class="container">
	<div class ="grade">
			<h3>등업게시판</h3>
	</div>
  <form action="./levelList" id="frm" name="levelSelect">
  <input type="hidden" name="curPage" id="curPage" value=1>
  	<table class="table table-hober">
  	<tr>
  		<td>Num</td><td>Title</td><td>Writer</td><td>Date</td><td>Hit</td>
  	</tr>
	<c:forEach items="${list}" var="level">
  		<tr>
  			<td>${level.num}</td>
  			<td><a href ="./levelSelect?num=${level.num}">${level.title}</a></td>
  			<td>${level.writer}</td>
  			<td>${level.regDate}</td>
  			<td>0</td>
  		</tr>
	</c:forEach>
 	
  </table>
    </form>
    <c:if test="${ not empty member}">
    <div class="writebtn">
  		<input type = "submit" class = "btn btn-warning" value="글쓰기" id="write" >
	</div>
   </c:if>
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