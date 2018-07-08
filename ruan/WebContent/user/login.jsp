<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>登录界面</title>
 </head>
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
body{
    margin: 0;
    padding: 0;
    repeat: no-repeat;
    background-attachment:fixed;
    filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/002.jpg", sizingMethod="scale");
    -ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/002.jpg", sizingMethod="scale");
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
}
#box1{
	
   padding:0;
   
   border:#c0c0c0 solid 1px;
   width:500px;
   height: 500px;
   margin: 0 auto;
   //background-color:#8DEEEE;
}
#zc{
	//border:#c0c0c0 solid 1px;
	position: relative;
	left:180px;
	top:100px;
	width:40px;
}
.t1{
	position: absolute;
	left:50px;
	top:30px;
}

</style>
<script>
function phoneCheck(){
	phone=document.getElementById("phone").value;
	var x=0;
	if('1'==phone[0]){
		for(var i=0;i<phone.length;i++){
			if(phone[i]>='0'&&phone[i]<='9'){
			}else{
				x=1;
				break;
			}
		}
	}else{
		x=2;
	}
	if(x>0){
		k=document.getElementById("ca");
		k.innerHtml="<font color='red'>请输入11位数字的有效号码</font>";
		return false;
	}

}

</script>
 <body>
 <h2 class="t1">欢迎！</h2>
<br>
<br>
 <div id="box1" align="center">
 	<div style="height: 60px;"></div>
 <div ><h2 align="center" class="text-muted">用户登录</h2></div>
 <div style="height: 20px;"></div>
 <form method="post" action="pwdCheck">
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1"><font color="red">*</font></span>
  		<input id="phone" name="phoneCheck.phone" type="text" placeholder="手机号码：" onkeyup="javascript:phoneCheck()"  class="form-control" aria-describedby="basic-addon2">
  	</div>
  	<div id="ca" style="height: 30px;" align="left"></div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1"><font color="red">*</font></span>
  		<input type="password" name="loginCheck.pwd" placeholder="密码：" class="form-control"  aria-describedby="basic-addon2">
  	</div>
  	<div>
  		<button type="submit" class="btn btn-success" style="margin-top:40px;width:200px">登录</button>
  	</div>
 </form>
  	<div id="zc">
  		<a href="logup">注册</a>
  	</div>
 </div>


 </body>
</html>
