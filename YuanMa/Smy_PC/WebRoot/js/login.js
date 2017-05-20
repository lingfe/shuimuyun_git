<<<<<<< HEAD
var common = document.querySelector(".common");
var common_con = document.querySelector(".common_con");
var free = document.querySelector(".free");
var free_con = document.querySelector(".free_con");
common.onclick=function(){
	free_con.style.display="none";
	common_con.style.display="block";
	free.style.color="black";
	free.style.background="none";
	common.style.color="white";
	common.style.background="#96d626";
	t3.innerHTML=" ";
	t33.style.display="none";
}
free.onclick=function(){
	common_con.style.display="none";
	free_con.style.display="block";
	common.style.color="black";
	common.style.background="none";
	free.style.color="white";
	free.style.background="#96d626";
	t2.innerHTML=" ";
	t1.innerHTML=" ";
		t22.style.display="none";
			t11.style.display="none";
}
 var phone = document.querySelector(".phone");
 var t11 = document.querySelector(".t11");
 var t22 = document.querySelector(".t22");
 var t33 = document.querySelector(".t33");
 var t1 = document.querySelector(".t1");
 var re = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;

 phone.onblur=function(){
 	if(phone.value==""){
 				t1.innerHTML="手机号不能为空！";
 			}
			else if(re.test(phone.value)){	
					t11.style.display="block";
						t1.innerHTML="";
						
			}else{
					t1.innerHTML="请输入正确的手机号！";
					t11.style.display="none";
			}
}
 var pwd = document.querySelector(".pwd");
 var t2 = document.querySelector(".t2");
 var res = /^[a-zA-Z0-9]{6,16}$/;
 pwd.onblur=function(){	
 	if(pwd.value==""){
 				t2.innerHTML="密码不能为空！";
 			}
		else if(res.test(pwd.value)){	
				t22.style.display="block";
						t2.innerHTML="";	
						
			}else{
					t2.innerHTML="密码为6~16位数字或字母！";	
					t22.style.display="none";
			}
}

 var phone1 = document.querySelector(".phone1");
 var t3 = document.querySelector(".t3");
 var re1 = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;
 phone1.onblur=function(){
 			if(phone1.value==""){
 				t3.innerHTML="手机号不能为空！";
 			}
			else if(re1.test(phone1.value)){
				t33.style.display="block";
						t3.innerHTML="";	
						btn223.onclick=function(){
	time(this);
	btn223.style.background="gray";
}

						
			}else{
				t33.style.display="none";
					t3.innerHTML="请输入正确的手机号！";	
					
			}
}
 var btn223 = document.querySelector(".btn223");
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
var zi =document.querySelector(".zi");
var zii =document.querySelector(".zii");
zi.onclick=function(){
	if(zii.checked==true){
		zii.checked=false;
	}else{
		zii.checked=true;
	}
}
var zhubtn =document.querySelector(".zhubtn");
zhubtn.onclick=function(){
	time(this);
zhubtn.style.background="gray"	;
}








=======
var common = document.querySelector(".common");
var common_con = document.querySelector(".common_con");
var free = document.querySelector(".free");
var free_con = document.querySelector(".free_con");
common.onclick=function(){
	free_con.style.display="none";
	common_con.style.display="block";
	free.style.color="black";
	free.style.background="none";
	common.style.color="white";
	common.style.background="#96d626";
	t3.innerHTML=" ";
	t33.style.display="none";
}
free.onclick=function(){
	common_con.style.display="none";
	free_con.style.display="block";
	common.style.color="black";
	common.style.background="none";
	free.style.color="white";
	free.style.background="#96d626";
	t2.innerHTML=" ";
	t1.innerHTML=" ";
		t22.style.display="none";
			t11.style.display="none";
}
 var phone = document.querySelector(".phone");
 var t11 = document.querySelector(".t11");
 var t22 = document.querySelector(".t22");
 var t33 = document.querySelector(".t33");
 var t1 = document.querySelector(".t1");
 var re = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;

 phone.onblur=function(){
 	if(phone.value==""){
 				t1.innerHTML="手机号不能为空！";
 			}
			else if(re.test(phone.value)){	
					t11.style.display="block";
						t1.innerHTML="";
						
			}else{
					t1.innerHTML="请输入正确的手机号！";
					t11.style.display="none";
			}
}
 var pwd = document.querySelector(".pwd");
 var t2 = document.querySelector(".t2");
 var res = /^[a-zA-Z0-9]{6,16}$/;
 pwd.onblur=function(){	
 	if(pwd.value==""){
 				t2.innerHTML="密码不能为空！";
 			}
		else if(res.test(pwd.value)){	
				t22.style.display="block";
						t2.innerHTML="";	
						
			}else{
					t2.innerHTML="密码为6~16位数字或字母！";	
					t22.style.display="none";
			}
}

 var phone1 = document.querySelector(".phone1");
 var t3 = document.querySelector(".t3");
 var re1 = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;
 phone1.onblur=function(){
 			if(phone1.value==""){
 				t3.innerHTML="手机号不能为空！";
 			}
			else if(re1.test(phone1.value)){
				t33.style.display="block";
						t3.innerHTML="";	
						btn223.onclick=function(){
	time(this);
	btn223.style.background="gray";
}

						
			}else{
				t33.style.display="none";
					t3.innerHTML="请输入正确的手机号！";	
					
			}
}
 var btn223 = document.querySelector(".btn223");
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
var zi =document.querySelector(".zi");
var zii =document.querySelector(".zii");
zi.onclick=function(){
	if(zii.checked==true){
		zii.checked=false;
	}else{
		zii.checked=true;
	}
}
var zhubtn =document.querySelector(".zhubtn");
zhubtn.onclick=function(){
	time(this);
zhubtn.style.background="gray"	;
}








>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268
