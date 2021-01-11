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

#update{
	float: right;
	margin-top: 50px;
	margin-right: 20px;
}


</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
<form action="./levelUpdate?num=${level.num}" method="post">
	
	<div class="form-group col-xs-12 col-md-10">
			<label for="title" >제목</label>
			<input type="text" class="form-control" id="title_1" name="title" value="${level.title}">
	</div>
	
	<div class="form-group col-xs-12 col-md-10">
			<label for="writer" >작성자</label>
			<input type="text" class="form-control" id="writer_1" name="writer" value="${level.writer}" readonly="readonly">
	</div>
	
	<div class="form-group col-xs-12 col-md-12">
			<label for="contents" >내용</label>
			<textarea class="form-control" id="contents"  name="contents">${level.contents}</textarea>
	</div>
	
	<input type="submit" class="btn btn-warning" id="update" value="수정하기">


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