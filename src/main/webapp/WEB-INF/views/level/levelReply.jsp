<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style type="text/css">
	#sub{
		margin-top: 115px;
		margin-right: 20px;
		float: right;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	
	<form action="./levelReply" method="post">
			<div class="form-group col-xs-12 col-md-3">
			<label for="writer">작성자</label>
			<input type="text" class="form-control" id="writer" name="writer" readonly="readonly" value="admin">
	</div>
  
  	 <div class="form-group col-xs-12 col-md-10">
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title" name="title" placeholder="등업신청 확인했습니다.">
	</div>
		
	<div class="form-group col-xs-12 col-md-12">
			<label for="contents">내용</label>
			<textarea class="form-control" id="contents" name="contents" ></textarea>
		</div>
  	<div class="form-group" id ="write" >
			<input type="submit" class="btn btn-warning" value="작성" id="sub">
	</div>	
	</form>
	
</div>

<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">
	$('#contents').summernote({
	height:300,

	});
</script>
</html>