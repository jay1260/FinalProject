<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
	#id{
		width: 200px;
	}
	#sub{
		float: right;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
  <form:form modelAttribute="levelVO" enctype="multipart/form-data">
  
    <div class="form-group">
      <label for="writer">작성자</label>
      <form:input path="writer"  class="form-control"  id="id" readonly="readonly" value="${member.id}"/>
      <form:errors path="writer" cssClass="error"></form:errors>
    </div>
  
  	 <div class="form-group">
      <label for="title">제목</label>
      <!-- path : parameter Name  -->
      <form:input path="title" class="form-control" id="title"/>
      <form:errors path="title" cssClass="error"></form:errors>
    </div>
    
	<div class="form-group">
	  <label for="contents">내용</label>
	  <form:textarea path="contents" id="contents"/>
	</div>
		
  	<div class="form-group" id ="write" >
				<input type="submit" class="btn btn-warning" value="Write" id="sub">
	</div>	
	
 </form:form>
</div>
	
<script type="text/javascript">
	$('#contents').summernote({
		height:300,
	});
</script>	


<c:import url="../template/footer.jsp"></c:import>
</body>
</html>