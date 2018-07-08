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
  <title>主界面</title>
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
function commit(){
	
	return confirm("确认解除封禁？");
	
}
function load(){
	document.getElementById("mypwd").style.display="none";
}
</script>
	<body onload="javascript:load();">
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
  		<li role="presentation"><a href="accuses">举报名单</a></li>
  		<li role="presentation"><a href="#"></a></li>
  		<li role="presentation" class="active"><a href="rejects">封禁名单</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	<div id="dhzs">
	<table class="table table-striped">
  	<tbody>
  	
  	<thead>
    	<td style="font-weight: bold;">被举报人id</td>
    	<td style="font-weight: bold;">举报人id</td>
    	<td style="font-weight: bold;">日期</td>
    	<td style="font-weight: bold;">举报内容</td>
    	<td style="font-weight: bold;">操作</td>
    </thead>
    <s:iterator value="aaccuses" var="ac">
	    <tr>
	      <td><a href="hisInform?hisBasic.uid=${ac.user1_id}">${ac.user1_id}</a></td>
	      <td><a href="hisInform?hisBasic.uid=${ac.user2_id}">${ac.user2_id}</a></td>
	      <td>${ac.adate}</td>
	      <td style="word-break:break-all;width:300px;">${ac.accusement}</td>
	      <td><a onclick="return commit();" href="undoReject?hisBasic.uid=${ac.user1_id}">解除封禁</a></td>
	    </tr>
  	</s:iterator>
    
  	</tbody>
	</table>
	
	<div id="hisc">
	
	</div>
	
    </div>
	
	</body>
</html>
