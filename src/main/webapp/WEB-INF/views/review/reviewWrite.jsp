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
	button{
		appearance:none;
		cursor: pointer;
		border: 0px;
		border-radius: 0;
		background-color: transparent;
	}
	
	.ReviewWritingPage_Container{
		width: 678px;
		margin: 101px auto 62px;
	}
	.ReviewWritingPage_Row{
		display: -webkit-flex;
		margin-bottom: 20px;
	}
	.RestaurantSubMessage_RestaurantName{
		display: block;
		max-width: 400px;
		font-size: 28px;
		line-height: 1.462;
		color: #ff7100;
		word-break: break-word;
	}
	.RestaurantSubMessage_SubMessageWrap{
		position: relative;
		margin-left: 4px;
	}
	.RestaurantSubMessage_SubMessage{
		font-size: 16px;
		width: 270px;
		margin: 0;
		position: absolute;
		top: 60%;
		transform:translateY(-50%);
		line-height: 1.45;
		color: #7F7F7F;
	}
	.ReviewWritingPage_EditorWrap{
		width: 678px;
		margin-bottom: 22px;
	}
	.ReviewEditor{
		flex: 1;
		-webkit-box-flex:1;
		-webkit-flex:1;
		position: relative;
	}
	.ReviewEditor_Editor_Wrap{
		border: 1px solid #DBDBDB;
		border-radius: 3px;
		box-sizing: border-box;
		padding: 16px;
	}
	.ReviewWritingPage_RestaurantRecommendPickerWrap{
		margin-bottom: 20px;
	}
	.RestaurantRecommendPicker{
		position: relative;
	}
	.ReviewEditor_Editor:placeholder-shown{
		color: #CBCBCB;
	}
	.ReviewEditor_Editor{
		display: block;
		width: 100%;
		height: 150px;
		border: 0;
		font-size: 16px;
		color: #000000;
		resize: none;
	}
	.ReviewEditor_TextLengthStateBox{
		position: absolute;
		bottom: -33px;
		right: 0;
		font-size: 12px;
		line-height: normal;
		color: #7F7F7F;
	}
	
	.ReviewWritingPage_ButtonsWrap{
		display: flex;
		display: -webkit-box;
		display: -webkit-flex;
		flex-direction: row;
		width: 678px;
		margin-top: 50px;
	}
	.ReviewWritingPage_Buttons{
		display: -webkit-flex;
		-webkit-justify-content:flex-end;
		-webkit-box-pack:end;
		width: 678px;
	}
	.ReviewWritingPage_CancelButton{
		min-width: 140px;
		min-height: 50px;
		margin-right: 16px;
		padding-left: 14px;
		padding-right: 14px;
		border: 1px solid #7F7F7F;
		border-radius: 50px;
		font-size: 16px;
		color: #7F7F7F;
		text-align: center;
		background-color: #FFFFFF;
	}
	.ReviewWritingPage_SubmitButton{
		min-width: 140px;
		min-height: 50px;
		padding-left: 14px;
		padding-right: 14px;
		border: 1px solid #ff7100;
		border-radius: 50px;
		font-size: 16px;
		color: #FFFFFF;
		text-align: center;
		background-color: #ff7100;
	}
	
	.rating{
		text-align: center;
		margin-bottom: 15px;
	}
	
	.rating label{
		color: #c2c2d6;
		cursor: pointer;
		font-size: 22px;
	}
	.rating label.on{
		color:#ff7100;
	}
	.rating .rate_radio {
		display: none;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<section class="ReviewWritingPage_Container">
	<div class="ReviewWritingPage_Row">
		<strong class="RestaurantSubMessage_RestaurantName">${getOne.restaurant}</strong>
		<div class="RestaurantSubMessage_SubMessageWrap">
			<span class="RestaurantSubMessage_SubMessage">
				에 대한 솔직한 리뷰를 써주세요.
			</span>
		</div>
	</div>
	<form action="./reviewWrite" method="post" id="reviewFrm">	
		<div class="ReviewWritingPage_ContentWrap">
			<div class="ReviewWritingPage_FormWrap">
				<div class="ReviewWritingPage_EditorWrap">
					<div class="ReviewEditor">
						<div class="ReviewEditor_Editor_Wrap">
							<input type="hidden" id="ref" name="ref" value="${getOne.num}">
							<div class="review_rating">
					            <div class="rating">
					                <input type="radio" name="star" id="rating1" value="1" class="rate_radio" title="1점">
					                <label for="rating1">★</label>
					                <input type="radio" name="star" id="rating2" value="2" class="rate_radio" title="2점">
					                <label for="rating2">★</label>
					                <input type="radio" name="star" id="rating3" value="3" class="rate_radio" title="3점" >
					                <label for="rating3">★</label>
					                <input type="radio" name="star" id="rating4" value="4" class="rate_radio" title="4점">
					                <label for="rating4">★</label>
					                <input type="radio" name="star" id="rating5" value="5" class="rate_radio" title="5점">
					                <label for="rating5">★</label>
					            </div>
					        </div>
				
							<div class="ReviewWritingPage_RestaurantRecommendPickerWrap">
								<textarea class="ReviewEditor_Editor" placeholder="아이디님 주문하신 메뉴는 어떠셨나요? 식당의 분위기와 서비스도 궁금해요!" style="overflow: hidden; overflow-wrap:break-word; height: 150px;" maxlength="1500" name="contents" id="contents"></textarea>
							</div>
						</div>
						
						<p class="ReviewEditor_TextLengthStateBox">
							<span class="ReviewEditor_CurrentTextLength" id="keyVal">0</span>
							<span class="ReviewEditor_TextLengthStateDivider">/</span>
							<span class="ReviewEditor_MaxTextLength">1,500</span>
						</p>
					</div>
				</div>	
			</div>
		</div>
		
		<div class="ReviewWritingPage_ButtonsWrap">
			<div class="ReviewWritingPage_Buttons">
				<input type="button" class="ReviewWritingPage_CancelButton" id="cancelBtn" value="취소">
				<input type="button" class="ReviewWritingPage_SubmitButton" id="writeBtn" value="리뷰 올리기">
			</div>
		</div>
	</form>	
</section>

<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript">

	$("#writeBtn").click(function(){
		var contentsCheck = $("#contents").val().length;
		var rate = ($('input:radio[name=star]').is(':checked'));

		if(contentsCheck == 0 || rate == false){
			alert("리뷰와 별점 선택은 필수입니다.");
		}else{
			$("#reviewFrm").submit();
		}
	});
	
	// 별점 디자인
	$(".rating label").click(function(){
		$(this).parent().children("label").removeClass("on");
		$(this).addClass("on").prevAll("label").addClass("on");
	});

	// 리뷰 글자수 세기
	$('textarea').keyup(function(){
		var inputlength = $(this).val().length;
		var remain = 0+ inputlength;
		$("#keyVal").html(remain);
		if(inputlength >= 1500){
			alert("최대 1500자 까지 작성가능합니다.");
		}
	});

	// 취소 버튼 전 페이지 이동
	$("#cancelBtn").click(function(){
		var referrer = document.referrer;
		location.href=referrer;
	});

</script>
</html>