/*
 * 
 * 加载时执行
 * 
*/
$(function() {
	/*
     * 
     * 个人中心页面
     * 
    */
   
   //选项卡
   $(".infoCont_l_item li").eq(0).addClass("active");
   $(".infoCont_r .infoCont_rCont").eq(2).show();
   $(".infoCont_l_item li").click(function() {
     //给当前选项添加高亮样式
     $(this).addClass("active").siblings().removeClass("active");
    
     //切换
     var index = $(this).index();
	 $(".infoCont_r .infoCont_rCont").eq(index).show().siblings().hide();
   })
   
   
   
	/*
	 * 
	 * 找回密码选项卡
	 * 
	*/
	
	//默认手机找回显示
	$(".findp_tabCont_item").first().show();
	$(".findp_tabBtn_item").first().addClass("findp_tabBtn_act");
	
	$(".findp_tabBtn_item").click(function() {
		//选中时高亮
		$(this).addClass("findp_tabBtn_act").siblings().removeClass("findp_tabBtn_act");
		var index = $(this).index();
		$(".findp_tabCont_item").eq(index).show().siblings().hide();
	})
	
	//初始化人工找回密码三级联动
	initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '44', '0', '0');
	//人工找回密码第一个步骤显示
	$(".rFind_pwd").eq(0).show();
	
	
	/*
	 * 
	 * 人工审核10分钟倒计时
	 * 
	*/
	var m=9;
    var s=59;
    setInterval(function(){
        if(s<10){
            $('#time').html(m+':0'+s);
        }else{
            $('#time').html(m+':'+s);
        }
        s--;
        if(s<0){
            s=59;
            m--;
        }
    },1000)
})

/*
 * 
 * 
 * 调用函数方法
 * 
 * 
*/

//得到地区码
function getAreaID(){
	var area = 0;          
	if($("#seachdistrict").val() != "0"){
		area = $("#seachdistrict").val();                
	}else if ($("#seachcity").val() != "0"){
		area = $("#seachcity").val();
	}else{
		area = $("#seachprov").val();
	}
	return area;
}

/*
 * 
 * 三级联动下拉相
 * 
*/

function showAreaID() {
	//地区码
	var areaID = getAreaID();
	//地区名
	var areaName = getAreaNamebyID(areaID) ;           
}

//根据地区码查询地区名
function getAreaNamebyID(areaID){
	var areaName = "";
	if(areaID.length == 2) {
		areaName = area_array[areaID];
	}
	else if(areaID.length == 4) {
		var index1 = areaID.substring(0, 2);
		areaName = area_array[index1] + " " + sub_array[index1][areaID];
	}
	else if(areaID.length == 6) {
		var index1 = areaID.substring(0, 2);
		var index2 = areaID.substring(0, 4);
		areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
	}
	return areaName;
}
