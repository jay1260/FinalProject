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
	.level{
		margin-top: 30px;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	<div class ="level">
			<h3>회원 관리</h3>
	</div>
  <form action="memberLevel?id=${member.id}" id="frm" name="adminpage" method="post">
  
  <input type="hidden" name="curPage" id="curPage" value=1>
  	<table class="table table-hober">
  	<tr>
  		<td>ID</td><td>Name</td><td>Email</td><td>Level</td><td>등급관리</td>
  	</tr>
  	<c:forEach items="${list}" var="member">
  	<tr>
  		<td id="id">${member.id}</td>
  		<td>${member.name}</td>
  		<td>${member.email}</td>
  		<td>${member.level}</td>
  		<td>
  			<c:if test="${member.level eq 3 || member.level eq 2}">
  			<input type="submit" value="등급올리기" class="btn btn-warning" title="${member.id}" id="btn" name="btn">
  			</c:if>
  		</td>
  	</tr>
  	</c:forEach>
	</table>
	
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
  	
	</form>
	</div>
                                               
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">
	$('#btn').click(function(){
	var id=$('#id').val();
	alert(id);
	var num = $(this).attr("title");
		location.href="./memberLevel?id="+id;
	});
</script>
</html>