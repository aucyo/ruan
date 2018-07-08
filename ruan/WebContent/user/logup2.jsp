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
  <title>注册界面</title>
 </head>
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
function check(){
	phone=document.getElementById("user_phone");
	a=Number(phone);
	if(!(a!=NaN&&"1".equals(phone[0]))){
		k=document.getElementById("ca");
		k.innerHTML="<font color='red'>请输入11位数字的有效电话</font>"
	}
}
function phoneCheck(){
	document.getElementById("ca").innerHTML="";
	phone=document.getElementById("phone").value;
	var x=0;
	if('1'.equals(phone[0])){
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
	}return true;

}
function pwdCheck(){
	if(document.getElementById("pwd").value!=document.getElementById("pwdc").value){
		document.getElementById("pwdcr").innerHTML="<font color='red'>两次输入的密码不同</font>";
	}else{
		document.getElementById("pwdcr").innerHTML="";
	}
}
function inform(){
	return alert("注册成功！");
}
</script>
<style>
body{
    margin: 0;
    padding: 0;
    repeat: no-repeat;
    background-attachment:fixed;
    //filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/002.jpg", sizingMethod="scale");
    //-ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/002.jpg", sizingMethod="scale");
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
}
#box1{
	
   padding:0;
   
   border:#c0c0c0 solid 1px;
   width:500px;
   height:1200px;
   margin: 0 auto;
   //background-color:#8DEEEE;
}
#zc{
	//border:#c0c0c0 solid 1px;
	position: relative;
	left:180px;
	top:50px;
	width:80px;
}
.t1{
	position: absolute;
	left:50px;
	top:30px;
}

</style>
 <body>
 <h2 class="t1">欢迎！</h2>
<br>
<br>
 <div id="box1" align="center">
 	<div style="height: 60px;"></div>
 <div ><h2 align="center" class="text-muted">用户注册</h2></div>
 <div align="left" style="height: 20px;padding:20px"><span>带" <font color="red">*</font> "为必填项</span> </div>
 <form method="post" action="logupsave">
  	<div class="input-group">
  		<span class="input-group-addon" ><font color="red">*</font></span>
  		<input id="phone" onkeyup="javascript:phoneCheck()" name="phoneCheck.phone" type="number" class="form-control" placeholder="手机号码：" aria-describedby="basic-addon2">
  	</div>
  	<div id="ca" style="height: 30px;"align="left"><font color="red">该号码已被注册</font></div>
  	<div class="input-group">
  		<span class="input-group-addon" ><font color="red">*</font></span>
  		<input name="zcuser.sname" type="text" class="form-control" placeholder="网络名称：" aria-describedby="basic-addon2">
  	</div>
  	<div id="cb" style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ><font color="red">*</font></span>
  		<input id="pwd" name="logupC.pwd" onkeyup="javascript:pwdCheck()" type="password" class="form-control" placeholder="密码：" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ><font color="red">*</font></span>
  		<input id="pwdc" type="password" onkeyup="javascript:pwdCheck()" class="form-control" placeholder="确认密码：" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ></span>
  		<input name="zcuser.qq" type="number" class="form-control" placeholder="QQ：" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ></span>
  		<input name="zcuser.wc" type="text" class="form-control" placeholder="微信：" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ></span>
  		<input name="zcuser.sex" type="text" class="form-control" placeholder="性别" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ></span>
  		<input name="zcuser.birth" type="text" class="form-control" placeholder="出生日期：" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group">
  		<span class="input-group-addon" ></span>
  		<input name="zcuser.loc" type="text" class="form-control" placeholder="所在省市：" aria-describedby="basic-addon2">
  	</div>
  	<div  style="height: 30px;"></div>
  	<div class="input-group" style="width:300px;height: 100px;">
  		<span class="input-group-addon" >个人描述：</span>
  		<textarea name="zcuser.dsc"  style="width:250px;height: 100px;" class="form-control" aria-describedby="basic-addon2"></textarea>
  	</div>
  	<div  style="height: 30px;"></div>
  	<div>
  		<button type="submit" onclick="return inform();" class="btn btn-success" style="margin-top:40px;width:200px">确认注册</button>
  	</div>
  		
 </form>
  	<div id="zc">
  		<a href="login">返回登录</a>
  	</div>
 </div>



 </body>
</html>
