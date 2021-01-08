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
	.container
	
	.li{
		
		color: gray;
		list-style: none;
	}
	.tt{
		margin-left : 30px;
		font-size: 
	}
	.con{
	
		border-bottom-color: black;
	}
	.btn{
		 float: right;
	}
	.date{
		margin-top:10px;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container select">
	
	<div class="title">
		<h1 class="tt">${level.title}</h1>
	</div>
	
	<div class = "date">
		<ul class= "li">
		<li >${level.writer}</li>
		<li id="writer">${level.regDate }</li>
		</ul>
	</div>
	
	<div class = "contents">
		<div class="con">
			${level.contents}
		</div>
	</div>
	
	<c:if test="${level.writer eq member.id}">
	<input type="submit" class ="btn btn-warning"value="수정하기"id ="update"title="${level.num}">
	<input type="submit" class="btn btn-danger" value="삭제하기" id="delete" title="${level.num}"/>
	</c:if>

</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">

$("#update").click(function(){
	var num = $(this).attr("title");
	location.href="./levelUpdate?num="+num;
})
$("#delete").click(function(){
	var num=$(this).attr("title");
	location.href="./levelDelete?num="+num;
})
</script>



</html>