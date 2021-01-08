function myFunction(){
		var x = document.getElementById("image");
		var demo = document.getElementById("demo");
					
		var txt = "";
		
		if ('files' in x) {
			if (x.files.length != 5)  {
				alert("5개의 파일을 첨부해주세요.");
				x.value="";
				txt += "";
				demo.innerHTML = txt;

				return;
			}else{
		    	txt += "<br><strong>" + "선택하신 파일정보입니다.</strong><br><br>";

			    for (var i = 0; i < x.files.length; i++) {
		        	txt += "<strong>" + (i+1) + "번 파일 : </strong>";
		        	var file = x.files[i];
		        	if ('name' in file) {
		          		txt += file.name + " ";
		        	}
				}
			}demo.innerHTML = txt;
		}	
	} 

	function preveal(event) { 
		var fileList = event.target.files;
		var txt = "실제 업로드 될 파일의 크기입니다.";
		
		for (var image of fileList) { 
			
			var reader = new FileReader(); 

			reader.onload = function(event) {
				var img = document.createElement("img"); 
				img.setAttribute("src", event.target.result);
				img.setAttribute("width","294px;");
				img.setAttribute("height","340px;");
				img.setAttribute("style","margin:5px 5px;");
				document.querySelector("div#image_container").appendChild(img); 
			};
			reader.readAsDataURL(image);
			document.getElementById("image_demo").innerHTML = txt;
		}
	}
	
	$("#title").keyup(function(){
		var titleLength = $(this).val().length;
		var remain = 0+titleLength

		$("#keyValue").html(remain);
		if(titleLength>=40){
			alert("최대 40글자");
		}
	});

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
        return str;
    }

	var cellPhone = document.getElementById('phone');
	cellPhone.onkeyup = function(event){
	    event = event || window.event;
	    var _val = this.value.trim();
	    this.value = autoHypenPhone(_val) ;
	}
	
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