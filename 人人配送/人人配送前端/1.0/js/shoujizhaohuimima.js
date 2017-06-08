
	var statu1 = false;
	var statu2 = false;
	var statu3 = false;
	var statu4 = false;
var phone = document.querySelector(".phone1");
var t1 = document.querySelector(".hidden2s");
var t1_1 = document.querySelector(".hidden2_2s");
var img1 = document.querySelector(".img2s");
var phon12 = document.querySelector(".phone12");
t1.style.display="none";
t1_1.style.display="none";
img1.style.display="none";
var re = /^1\d{10}$/;
 phone.onblur=function(){
 	if(phone.value==""){
 				t1.style.display="block";
 				t1.style.float="right";
 				t1_1.style.display="none";
 				img1.style.display="none";
 			}
			else if(re.test(phone.value)){	
					t1.style.display="none";
 				   t1_1.style.display="none";
 				  img1.style.display="block";
 				  img1.style.float="right";
 				   statu1 = true;
						
			}else{
				t1.style.display="none";
 				t1_1.style.display="block";
 				t1_1.style.float="right";
 				img1.style.display="none";
			}
}
var pwd = document.querySelector(".czpwd");
var t3 = document.querySelector(".hidden3");
var t3_3 = document.querySelector(".hidden3_3");
var img3 = document.querySelector(".img3");
 var res = /^[a-zA-Z0-9]{6,16}$/;
 pwd.onblur=function(){	
 	if(pwd.value==""){
 				t3.style.display="block";
 				t3.style.float="right";
 				t3_3.style.display="none";
 				img3.style.display="none";
 			}
		else if(res.test(pwd.value)){	
				   t3.style.display="none";
 				   t3_3.style.display="none";
 				   img3.style.display="block";
 				   img3.style.float="right";
 				    statu2 = true;
						
			}else{
				t3.style.display="none";
 				t3_3.style.display="block";
 				img3.style.display="none";
 				t3_3.style.float="right";
			}
}

var phone1 = document.querySelector(".phone1");
var t8 = document.querySelector(".hidden8");
var t8_8 = document.querySelector(".hidden8_8");
var img8 = document.querySelector(".img8");
var re1 = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;
 phone1.onblur=function(){
 			if(phone1.value==""){
 				t8.style.display="block";
 				t8.style.float="right";
 				t8_8.style.display="none";
 				img8.style.display="none";
 			}
			else if(re1.test(phone1.value)){
				  
							
						btn223.onclick=function(){
	time(this);
	btn223.style.background="gray";
	              t8.style.display="none";
 				   t8_8.style.display="none";
 				  img8.style.display="block";
 				  img8.style.float="right";
 				   statu3 = true;
}				
}else{
	            t8.style.display="none";
 				t8_8.style.display="block";
 				img8.style.display="none";
 				 t8_8.style.float="right";
}
}
var btn223 = document.querySelector(".yzbtn");
var wait=90;
function time(o){
	if(wait==0){
	o.removeAttribute("disabled");
	o.innerHTML="获取验证码";
	btn.style.background="red";
	wait=90;
	}else{
		o.setAttribute("disabled",true);
		o.innerHTML="重新发送("+wait+")秒";
		
		wait--;
		setTimeout(function(){
			time(o);
		},1000)
	}
}

//
var pwd = document.querySelector(".qrpwd");
var t4 = document.querySelector(".hidden4");
var t4_4 = document.querySelector(".hidden4_4");
var img4 = document.querySelector(".img4");
 pwd.onblur=function(){	
 	var pwdva = document.querySelector(".czpwd").value;
 	if(pwd.value==""){
 				t4.style.display="block";
 				t4.style.float="right";
 				t4_4.style.display="none";
 				img4.style.display="none";
 			}
		else if(pwd.value==pwdva){	
				   t4.style.display="none";
 				   t4_4.style.display="none";
 				   img4.style.display="block";
 				   img4.style.float="right";
 				    statu4 = true;
						
			}else{
				t4.style.display="none";
 				t4_4.style.display="block";
 				img4.style.display="none";
 				t4_4.style.float="right";
			}
}

var tijiao = document.querySelector(".tijiao");
tijiao.onclick=function(){
var tijiao = document.forms[0];
	if(statu1 == true&& statu2 == true&&statu3 == true&&statu4 == true)
       {
		form.submit(); 
		form.action="index.html";
		}else{
			alert("请填写完整");
       		return false;
       		form.action="index.html";
        }     
	
	
}
