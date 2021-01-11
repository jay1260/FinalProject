	// 글 삭제 버튼
	$("#deleteBtn").click(function(){
		var num = $(this).attr("title");
		location.href="./placeDelete?num="+num;
	});
	
	function goPopup(){
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("/place/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	
	function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
		
	}
	
	// 전화번호 자동 하이픈
		function autoHypenPhone(str){
	        str = str.replace(/[^0-9]/g, '');
	        var tmp = '';
	
	        if( str.length < 4){
	            return str;
	        }else if(str.length == 9){
				tmp += str.substr(0, 2);
				tmp +='-';
				tmp += str.substr(2, 3);
				tmp +='-';
				tmp += str.substr(5);
				return tmp;
	        }else if(str.length == 10){
				tmp += str.substr(0, 3);
				tmp +='-';
				tmp += str.substr(3, 3);
				tmp +='-';
				tmp += str.substr(6);
				return tmp;
	        }
	        else if(str.length == 11){
	            tmp += str.substr(0, 3);
	            tmp += '-';
	            tmp += str.substr(3, 4);
	            tmp += '-';
	            tmp += str.substr(7);
	            return tmp;
	        }else if(str.length == 12){
				tmp += str.substr(0, 4);
				tmp += '-';
				tmp += str.substr(4, 4);
				tmp += '-';
				tmp += str.substr(8);
				return tmp;
	        }
	        else{              
	            tmp += str.substr(0, 3);
	            tmp += '-';
	            tmp += str.substr(3, 4);
	            tmp += '-';
	            tmp += str.substr(7);
	            return tmp;
	        }
	        
	    }
	
		var cellPhone = document.getElementById('phone');
		cellPhone.onkeyup = function(event){
		    event = event || window.event;
		    var _val = this.value.trim();
		    this.value = autoHypenPhone(_val) ;
		}
		
		// 오픈 마감 시간 자동 :
		function autoTime(str){
	        str = str.replace(/[^0-9]/g, '');
	        var tmp = '';
	
	        if( str.length == 4){
	            tmp += str.substr(0, 2);
				tmp +=':';
				tmp += str.substr(2);
				return tmp;
	        }
	        return str;
	    }
	
		var openTime = document.getElementById('openTime');
		openTime.onkeyup = function(event){
		    event = event || window.event;
		    var _val = this.value.trim();
		    this.value = autoTime(_val) ;
		}
		var closeTime = document.getElementById('closeTime');
		closeTime.onkeyup = function(event){
		    event = event || window.event;
		    var _val = this.value.trim();
		    this.value = autoTime(_val) ;
		}