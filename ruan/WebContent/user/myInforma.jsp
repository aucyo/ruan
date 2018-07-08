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
  <title>我的信息</title>
 </head>
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
	.searchdiv{
		position: absolute;
		left: 700px;
		top: 60px;
		width: 500px;
	}
	.daohang{
		
		position: absolute;
		left: 100px;
		top: 60px;
		width: 120px;
	}
	#dhzs{
		
		position: absolute;
		left: 250px;
		top: 120px;
		width: 800px;
		height: auto;
		margin-bottom: 100px;
		
	}
	#dsc{
		height: 150px;
	}
</style>
<script>
function check(){
	phone=document.getElementById("user_phone");
	a=Number(phone);
	if(!(a!=NaN&&"1".equals(phone[0]))){
		k=document.getElementById("ca");
		k.innerHTML="<font color='red'>请输入11位数字的有效电话</font>"
	}
}
function setSearchType(t){
	document.getElementById('searchType').value=t;
	//alert(t);
	if(t=='byuser'){
		document.getElementById('selectbutton').innerHTML='按用户名<span class=\"caret\"></span>';
		return ;
	}
	if(t=='byloc'){
		document.getElementById('selectbutton').innerHTML='按地区<span class=\"caret\"></span>';
		return ;
	}
	if(t=='byitem'){
		document.getElementById('selectbutton').innerHTML="按物品名<span class=\"caret\"></span>";
		return ;
	}
	if(t=='bycat'){
		document.getElementById('selectbutton').innerHTML='按物品类别<span class=\"caret\"></span>';
		return ;
	}
	
}
function udmyinform(){
	document.getElementById("mysname").innerHTML="<input type=\"text\" name=\"myUser.sname\" class=\"form-control\" value=\"${myUser.sname}\"/>";
	document.getElementById("mypwd").style.display="table-row";
	document.getElementById("myqq").innerHTML="<input type=\"number\" name=\"myUser.qq\" class=\"form-control\" value=\"${myUser.qq}\"/>";
	document.getElementById("mywc").innerHTML="<input type=\"text\" name=\"myUser.wc\" class=\"form-control\" value=\"${myUser.wc}\"/>";
	document.getElementById("mybirth").innerHTML="<input type=\"text\" name=\"myUser.birth\" class=\"form-control\" value=\"${myUser.birth}\"/>";
	document.getElementById("mysex").innerHTML="<input type=\"text\" name=\"myUser.sex\" class=\"form-control\" value=\"${myUser.sex}\"/>";
	document.getElementById("myloc").innerHTML="<input type=\"text\" name=\"myUser.loc\" class=\"form-control\" value=\"${myUser.loc}\"/>";
	document.getElementById("mydsc").innerHTML="<textarea id=\"dsca\" name=\"myUser.dsc\"  style=\"width: 500px;height: 150px;\">  </textarea>";
	document.getElementById("cbutton").innerHTML="<input type=\"submit\"  class=\"btn btn-success\" style=\"width: 200px;\" value=\"确认\"/> ";
	document.getElementById("dbutton").innerHTML="<button type=\"button\" onclick=\"location='myInform?myBasic.uid=${myBasic.uid}'\" class=\"btn btn-default\" style=\"width: 100px;\" >取消</button>";
	}
function load(){
	document.getElementById("mypwd").style.display="none";
}
function inform(){
	return confirm("确认修改？");
}
</script>
	<body onload="javascript:load()">
	<form action="search">
	<div class="searchdiv">
    <div class="input-group">
      <input id="searchtxt" name="searchTxt" type="text" class="form-control" aria-label="..." placeholder="请输入所查找的物品/用户/地区">
      <div class="input-group-btn">
        <button id="selectbutton" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">按用户名<span class="caret"></span></button>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a href="javascript:setSearchType('byuser')">按用户名</a></li>
          <li><a href="javascript:setSearchType('byloc')">按地区</a></li>
          <li><a href="javascript:setSearchType('byitem')">按物品名</a></li>
          <li><a href="javascript:setSearchType('bycat')">按物品类别</a></li>
        </ul>
      </div><!-- /btn-group -->
      <div style="float: left;"><button id="a" type="submit" class="btn btn-default">搜索</button></div>
    </div><!-- /input-group -->
  	</div>
  	<input  type="hidden" name="myBasic.uid" value="${myBasic.uid}">
  	<input id="searchType" type="hidden" name="searchType" value="byuser">
	</form>
	
	<div class="daohang">
		<ul class="nav nav-pills nav-stacked">
  		<li role="presentation" class="active"><a href="myInform?myBasic.uid=${myBasic.uid}">我的资料</a></li>
  		<li role="presentation"><a href="myIssues?myBasic.uid=${myBasic.uid}">我的发布</a></li>
  		<li role="presentation"><a href="#"></a></li>
  		<li role="presentation"><a href="issuePage?myBasic.uid=${myBasic.uid}">我要发布</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	<div id="dhzs">
	<form action="updateMyInform"> 
	<div align="right"><input type="button" class="btn btn-default" onclick="javascript:udmyinform();" value="修改我的资料"/></div>
	<table class="table table-striped">
  	<tbody>
  	<caption style="font-weight: bold;">我的资料</caption>
    <tr>
      <td align="right">网络名称:</td>
      <td id="mysname">${myUser.sname}</td>
    </tr>
  	<tr>
      <td align="right">电话:</td>
      <td><div id="myphone">${myBasic.phone}</div></td>
   </tr>
    <tr id="mypwd">
      <td align="right">密码:</td>
      <td ><input type="password" name="myUp.pwd" class="form-control" value="${myUp.pwd}"/></td>
    </tr>
    <tr>
      <td align="right">性别:</td>
      <td id="mysex">${myUser.sex}</td>
    </tr>
    <tr>
      <td align="right">QQ:</td>
      <td id="myqq">${myUser.qq}</td>
    </tr>
    <tr>
      <td align="right">微信:</td>
      <td id="mywc">${myUser.wc}</td>
    </tr>
    <tr>
      <td align="right">出生日期:</td>
      <td id="mybirth">${myUser.birth}</td>
    </tr>
    <tr>
      <td align="right">所在省市:</td>
      <td id="myloc">${myUser.loc}</td>
    </tr>
    <tr id="dsc">
      <td align="right">个人描述:</td>
      <td id="mydsc" style="word-break:break-all;width:650px;">${myUser.dsc}</td>
    </tr>
  	</tbody>
	</table>
	
    <input type="hidden" name="myBasic.uid" value="${myBasic.uid}" />
    <input type="hidden" name="myUp.uid" value="${myUp.uid}" />
    <input type="hidden" name="myUser.uid" value="${myUser.uid}" />
    <div align="center">
    	<span id="cbutton"  style="width:500px"></span>
    	<span id="dbutton"  style="width:300px"></span>
    </div>
	</form>
	
	<div id="hisc">
	<table class="table table-striped">
  	<tbody>
  	<caption style="font-weight: bold;">我的评价</caption>
    <thead>
    	<td style="font-weight: bold;">用户名</td>
    	<td style="font-weight: bold;">日期</td>
    	<td style="font-weight: bold;">评价内容</td>
    </thead>
    <s:iterator value="comments" var="cmt">
	    <tr>
	      <td><a href="hisInform?myBasic.uid=${myBasic.uid}&hisBasic.uid=${cmt.cuser_id}"> ${cmt.sname} </a></td>
	      <td>${cmt.date}</td>
	      <td style="word-break:break-all;width:500px;">${cmt.comment}</td>
	    </tr>
  	</s:iterator>
    
  	</tbody>
	</table>
	</div>
	
    </div>
	
	</body>
</html>
