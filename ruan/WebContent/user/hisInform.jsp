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
  <title>浏览他人信息</title>
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
	#fbwp{
		
		width:800px;
		height: auto;
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
function addct(){
	document.getElementById('addct').style.display="block";
	document.getElementById('addac').style.display="none";
}
function addac(){
	document.getElementById('addac').style.display="block";
	document.getElementById('addct').style.display="none";
}
function load(){
	document.getElementById('addct').style.display="none";
	document.getElementById('addac').style.display="none";
}function inform(){
	return alert("举报成功!");
}
</script>
	<body onload="load()">
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
  		<li role="presentation"><a href="myInform?myBasic.uid=${myBasic.uid}">我的资料</a></li>
  		<li role="presentation"><a href="myIssues?myBasic.uid=${myBasic.uid}">我的发布</a></li>
  		<li role="presentation"><a href="#"></a></li>
  		<li role="presentation"><a href="issuePage?myBasic.uid=${myBasic.uid}">我要发布</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	<div id="dhzs">
	<table class="table table-striped">
  	<tbody>
  	<caption id="histitle" style="font-weight: bold;">Ta的资料</caption>
    <tr>
      <td align="right">网络名称:</td>
      <td>${hisUser.sname}</td>
    </tr>
    <tr>
      <td align="right">性别:</td>
      <td>${hisUser.sex}</td>
    </tr>
    <tr>
      <td align="right">所在省市:</td>
      <td>${hisUser.loc}</td>
    </tr>
    <tr id="dsc">
      <td align="right">个人描述:</td>
      <td style="word-break:break-all;width:650px;">${hisUser.dsc}</textarea></td>
    </tr>
  	</tbody>
	</table>
	
	<div id="hisc">
	<div style="font-weight: bold;"><a href="javascript:addct()">添加评价</a></div>
	<div style="font-weight: bold;"><a href="javascript:addac()">举报Ta</a></div>
	<form action="addUtU">
			
			<div id="addct" style="position: relative;top:auto;left:50px;">
			<textarea name="hisUtU.comment" style="width:400px;height: 70px;" placeholder="在此处填写评价" class="form-control"></textarea>
			<button type="submit" class="btn btn-default">确认</button>
			</div>
		<input type="hidden" name="myBasic.uid" value="${myBasic.uid}" />
		<input type="hidden" name="hisBasic.uid" value="${hisBasic.uid}" />
	</form>
	<form action="addAccuse">
			<div id="addac" style="position: relative;top:auto;left:50px;">
			<textarea name="hisAccuse.accusement" style="width:400px;height: 70px;" placeholder="在此处填写举报理由" class="form-control"></textarea>
			<button type="submit" onclick="return inform();" class="btn btn-default">确认</button>
			</div>
		<input type="hidden" name="myBasic.uid" value="${myBasic.uid}" />
		<input type="hidden" name="hisBasic.uid" value="${hisBasic.uid}" />
	</form>
	
	<table class="table table-striped">
  	<tbody>
  	<caption id="hiscomment" style="font-weight: bold;text-align: center;">Ta的评价</caption>
  	
  	<thead>
    	<td style="font-weight: bold;">用户名</td>
    	<td style="font-weight: bold;">日期</td>
    	<td style="font-weight: bold;">评价内容</td>
    </thead>
    <s:iterator value="comments" var="cmt">
	    <tr>
	      <td><a href="hisInform?myBasic.uid=${myBasic.uid}&hisBasic.uid=${cmt.cuser_id}">${cmt.sname}</a></td>
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
