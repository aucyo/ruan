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
		top: 60px;
		width: 400px;
		height: auto;
	}
	#dsc{
		height: 150px;
	}
	#itemtable{
		
		position: absolute;
		left: 300px;
		top: 120px;
		width: 800px;
		height: auto;
	}
	.wpg{
		width:120px;
		text-align:right;
	}
	.image{
		height: 200px;
		background-size:auto 200px ;
		background-repeat:no-repeat ;
	}
</style>
<script>
function check(){
	a="${myItem}"
	if(a==""){
		document.getElementById('itemtable').style.display="none";
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
}
function load(){
	document.getElementById('addct').style.display="none";
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
  		<li role="presentation"><a href="myInform?myBasic.uid=${myBasic.uid}">我的资料</a></li>
  		<li role="presentation"><a href="myIssues?myBasic.uid=${myBasic.uid}">我的发布</a></li>
  		<li role="presentation"><a href="#"></a></li>
  		<li role="presentation"><a href="issuePage?myBasic.uid=${myBasic.uid}">我要发布</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	
		<div id="itemtable">
		<table class="table table-hover">
		<tbody>
	  	<caption style="font-weight: bold;">物品详细</caption>
	    <tr>
	      <td class="wpg">物品名:</td>
	      <td>${hisItem.iname}</td>
	    </tr>
	    <tr>
	      <td class="wpg">原价:</td>
	      <td>${hisItem.oprice}</td>
	    </tr>
	    <tr>
	      <td class="wpg">发布报价:</td>
	      <td>${hisItem.cprice}</td>
	    </tr>
	    <tr>
	      <td class="wpg">所属类别:</td>
	      <td>${hisItem.category}</td>
	    </tr>
	    <tr>
	      <td class="wpg">发布日期:</td>
	      <td>${hisItem.date}</td>
	    </tr>
	    <tr>
	      <td class="wpg">物品描述:</td>
	      <td>${hisItem.dsc}</td>
	    </tr>
	    <tr>
	      <td class="wpg">物品图片:</td>
	      <td class="image" style="background-image:url(${hisItem.image1});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${hisItem.image2});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${hisItem.image3});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${hisItem.image4});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${hisItem.image5});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${hisItem.image6});" ></td>
	    </tr>
	    </tbody>
		</table>
	<div id="hisc">
		<form action="addItU" method="post">
			<div style="font-weight: bold;"><a href="javascript:addct()">添加评价</a>
			</div>
			<div id="addct" style="position: relative;top:auto;left:50px;">
			<textarea name="itu.comment" style="width:400px;height: 70px;" placeholder="在此处填写评价" class="form-control"></textarea>
			<button type="submit" class="btn btn-default">确认</button>
			</div>
		<input type="hidden" name="hisItem.iid" value="${hisItem.iid}" />
		<input type="hidden" name="hisItem.uid" value="${hisItem.uid}" />
		<input type="hidden" name="myBasic.uid" value="${myBasic.uid}" />
		</form>
		
		
	<table class="table table-striped">
  	<tbody>
  	<caption id="itemcomment" style="font-weight: bold;text-align: center;">该物品的评价</caption>
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
