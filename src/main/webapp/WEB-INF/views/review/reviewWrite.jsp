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
	#star{
		margin-bottom: 15px;
		text-align: center;
		font-size: 18px;
	}
	
	#star a{
		text-decoration: none;
		color: gray;
	}
	#star a.on{
		color:#ff7100;
	}
	
</style>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<section class="ReviewWritingPage_Container">
	<div class="ReviewWritingPage_Row">
		<strong class="RestaurantSubMessage_RestaurantName">가게이름</strong>
		<div class="RestaurantSubMessage_SubMessageWrap">
			<span class="RestaurantSubMessage_SubMessage">
				에 대한 솔직한 리뷰를 써주세요.
			</span>
		</div>
	</div>
	<form action="">	
		<div class="ReviewWritingPage_ContentWrap">
			<div class="ReviewWritingPage_FormWrap">
				<div class="ReviewWritingPage_EditorWrap">
					<div class="ReviewEditor">
						<div class="ReviewEditor_Editor_Wrap">
						<p id="star">
							<a href="#" value="1">★</a>
							<a href="#" value="2">★</a>
							<a href="#" value="3">★</a>
							<a href="#" value="4">★</a>
							<a href="#" value="5">★</a>
						</p>
							<div class="ReviewWritingPage_RestaurantRecommendPickerWrap">
								<textarea class="ReviewEditor_Editor" placeholder="아이디님 주문하신 메뉴는 어떠셨나요? 식당의 분위기와 서비스도 궁금해요!" style="overflow: hidden; overflow-wrap:break-word; height: 150px;" maxlength="10000"></textarea>
							</div>
						</div>
						<p class="ReviewEditor_TextLengthStateBox">
							<span class="ReviewEditor_CurrentTextLength" id="keyVal">0</span>
							<span class="ReviewEditor_TextLengthStateDivider">/</span>
							<span class="ReviewEditor_MaxTextLength">10,000</span>
						</p>
					</div>
				</div>	
			</div>
		</div>
		
		<div class="ReviewWritingPage_ButtonsWrap">
			<div class="ReviewWritingPage_Buttons">
				<button class="ReviewWritingPage_CancelButton" id="cancelBtn">취소</button>
				<button class="ReviewWritingPage_SubmitButton" id="writeBtn">리뷰 올리기</button>
			</div>
		</div>
	</form>	
</section>

<c:import url="../template/footer.jsp"></c:import>

</body>
<script type="text/javascript">
	$('textarea').keyup(function(){
		var inputlength = $(this).val().length;
		var remain = 0+ inputlength;
		$("#keyVal").html(remain);
	});

	$("#writeBtn").click(function(){
		var inputlength = $('textarea').val().length;
		if(inputlength==0){
			alert("내용을 입력하세요");
		}else{
			alert("내용 감사");
		}
	});

	$("#cancelBtn").click(function(){
		var referrer = document.referrer;
		location.href=referrer;
	});

	$("#star a").click(function(){
		$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		//alert($(this).attr("value"));
	});
</script>
</html>