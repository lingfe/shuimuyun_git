//大圆
var dya=document.querySelector(".dya");
var dyb=document.querySelector(".dyb");
var dyc=document.querySelector(".dyc");
//小圆
var a=document.querySelector(".a");
var b=document.querySelector(".b");
var c=document.querySelector(".c");
//点击切换
dya.onclick=function(){
	a.style.background="black";
	b.style.background="none";
	c.style.background="none";
}
dyb.onclick=function(){
	b.style.background="black";
	a.style.background="none";
	c.style.background="none";
}
dyc.onclick=function(){
	c.style.background="black";
	b.style.background="none";
	a.style.background="none";
}