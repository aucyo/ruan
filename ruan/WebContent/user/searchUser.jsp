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
  <title>搜索</title>
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
		width: 900px;
		height: auto;
		
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
function load(){
	document.getElementById("ssjg").innerHTML="搜索'${searchTxt}'的结果:";
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
</script>
	<body onload="javaScript:load()">
	<form action="search" method="post">
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
  		<li role="presentation"><a href="myInform?myBasic.uid=${myBasic.uid}">我的资料</a></li>
  		<li role="presentation"><a href="myIssues?myBasic.uid=${myBasic.uid}">我的发布</a></li>
  		<li role="presentation"><a href="#"></a></li>
  		<li role="presentation"><a href="issuePage?myBasic.uid=${myBasic.uid}">我要发布</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	 
	<div id="dhzs">
	<table class="table table-hover">
  	<tbody>
  	<caption id="ssjg" style="font-weight: bold;">搜索结果</caption>
  	<thead>
  		<td style="font-weight: bold;">用户名</td>
  		<td style="font-weight: bold;">性别</td>
  		<td style="font-weight: bold;">地区</td>
  		<td style="font-weight: bold;width:300px;">个人描述</td>
  	</thead>
  	<s:iterator value="searchUsers" var="user">
	    <tr>
	      <td><a href="hisInform?myBasic.uid=${myBasic.uid}&hisBasic.uid=${user.uid}">${user.sname}</a></td>
	      <td>${user.sex}</td>
	      <td>${user.loc}</td>
	      <td>${user.dsc}</td>
	    </tr>
  	</s:iterator>
  	</tbody>
	</table>
	</div>
	
	
	</body>
</html>
