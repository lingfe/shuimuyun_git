$("#file1").change(function(){  
  // getObjectURL是自定义的函数，见下面  
  // this.files[0]代表的是选择的文件资源的第一个，因为上面写了 multiple="multiple" 就表示上传文件可能不止一个  
  // ，但是这里只读取第一个   
  var objUrl = getObjectURL(this.files[0]) ;  
  // 这句代码没什么作用，删掉也可以  
  // console.log("objUrl = "+objUrl) ;  
  if (objUrl) {  
    // 在这里修改图片的地址属性  
    $("#img1").attr("src", objUrl) ;  
  }  
}) ;  
//建立一個可存取到該file的url  
function getObjectURL(file) {  
  var url = null ;   
  // 下面函数执行的效果是一样的，只是需要针对不同的浏览器执行不同的 js 函数而已  
  if (window.createObjectURL!=undefined) { // basic  
    url = window.createObjectURL(file) ;  
  } else if (window.URL!=undefined) { // mozilla(firefox)  
    url = window.URL.createObjectURL(file) ;  
  } else if (window.webkitURL!=undefined) { // webkit or chrome  
    url = window.webkitURL.createObjectURL(file) ;  
  }  
  return url ;  
}  
