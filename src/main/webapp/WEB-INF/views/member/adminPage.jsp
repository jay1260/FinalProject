<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
 body{
		font-family: 'Nanum Gothic', sans-serif;
	}
	.level{
		margin-top: 30px;
		text-align: center;
		font-size:26px;
		color: #000000;
		line-height: 1.2em;
	}
	.header_list{
		margin: 0 auto;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	<div class ="level">
		<table class="header_list">
			<tr>
			<td><img alt="" src="../image/member/unnamed.png"></td>
			<td><h3>회원 관리</h3></td>
			</tr>
		</table>	
	</div>
<div class="adminpage" style="margin:50px auto;">

  <input type="hidden" name="curPage" id="curPage" value=1>
  <input type="hidden" name="id" id="id">
  <input type="hidden" name="level" id="level">
  	<table class="table table-hober">
  	<tr>
  		<td>ID</td><td>Name</td><td>Email</td><td>Level</td><td>등급관리</td>
  	</tr>
  	<c:forEach items="${list}" var="member">
  	<tr>
  		<td id="id" title="${member.id}">${member.id}</td>
  		<td id="name" title="${member.name}">${member.name}</td>
  		<td id="email" title="${member.email}">${member.email}</td>
  		<td id="level" title="${member.level }">${member.level}</td>
  		<td>
  			<c:if test="${member.level eq 3 || member.level eq 2}">
  			<a href="./adminPage?id=${member.id}&level=${member.level}" id="link"><input type="button" value="등급올리기" class="btn btn-warning" title="${member.id}" id="btn" name="id"></a>
  			</c:if>
  		</td>
  	</tr>
  	</c:forEach>
	</table>

</div>	
	<ul class="pagination">
	  <c:if test="${pager.beforeCheck}">
	  	<li><a href="./adminPage?curPage=${pager.startNum-1}" class="adlist" title="${pager.startNum-1}">Pre</a></li>
	  </c:if>		
	  <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	  	<li><a href="./adminPage?curPage=${i}&search=${parger.search}" class="adlist" title="${i}">${i}</a></li>
	  </c:forEach>
	  
	  <c:if test="${pager.nextCheck}">
	  	<li><a href="./adminPgae?curPage=${pager.startNum+1}" class="adlist" title="${pager.lastNum+1}">Next</a></li>
	  </c:if>
  	</ul>
  	
	
</div>
                                               
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">

	
</script>
</html>