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

	.li{
		margin-left: 30px;
		color: gray;
		list-style: none;
		margin-bottom: 50px;
		border-bottom: 2px solid gray;
	}

	.tt{
		margin-top : 15px;
		margin-bottom: 50px;
		margin-left : 30px;
		font-weight: bold;
		
		
	}
	.contents{
		height : 500px;
		margin-left: 30px;
		margin-bottom: 30px;

	}

	.btn{
		 float: right;
		 margin-bottom: 30px;
	}
	#writer{
		margin-top: 5px;
	}
	.container{
		margin-top : 100px;
		margin-bottom : 20px;
		
	} 
	#delete{
		margin-right: 20px;
	}
	#list{
		margin-top : 30px;
		margin-right : 20px;
		float: right;
	}
	#pre{
		margin-top : 30px;
		margin-right : 175px;
		float: right;
	}
	#next{
		margin-top : 30px;
		margin-right: 20px;
		float: right;
	}
	#back{
		margin-left: 30px;
		margin-top: 20px;
		color:orange;
	}

</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<ul>
<li><input type = "submit" value="이전" class="btn btn-warning" id ="pre" title="${level.num}"></li>
<li><input type = "submit" value="목록" class="btn btn-warning" id ="list"></li>
<li><input type = "submit" value="다음" class="btn btn-warning" id ="next" title="${level.num}"></li>
</ul>
<div class="container">
		
	<a href="./levelList" id="back"> > 등업 게시판</a>
	
	<div class="title">
		<h1 class="tt">${level.title}</h1>
	</div>
	
	<div class = "date">
		<ul class= "li">
		<li>작성자: ${level.writer}
		<li id="writer">작성일: ${level.regDate} 조회수: ${level.hit}</li>
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
	<c:if test="${member.id eq 'admin'}">
	<input type="submit" class ="btn btn-warning"value="답글달기"id ="reply"title="${level.num}">
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
$("#list").click(function(){
	location.href="./levelList";
});
$("#reply").click(function(){
	var num = $(this).attr("title");
	location.href="./levelReply?num="+num;
})

</script>



</html>