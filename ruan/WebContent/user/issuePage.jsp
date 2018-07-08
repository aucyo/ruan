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
		left: 80px;
		top: 60px;
		width: 120px;
	}
	#dhzs{
		
		position: absolute;
		left: 250px;
		top: 120px;
		width: 800px;
		height: auto;
		padding: 20px;
		margin-bottom: 150px;
	}
	#dsc{
		height: 200px;
		width: 500px;
	}
	#itemtable{
		
		position: absolute;
		left: 700px;
		top: 160px;
		width: 500px;
		height: auto;
	}
	.wpg{
		width:120px;
		text-align:right;
	}
</style>
<script>
	function load(){
		document.getElementById('dscareahint').style.display="none";
		document.getElementById('iname').style.display="none";
		document.getElementById('cprice').style.display="none";
	}
	function Check(){
		if(document.getElementById("dscarea").value.length>250){
			document.getElementById('dscareahint').style.display="block";
		}else{
			document.getElementById('dscareahint').style.display="none";
		}
		if(document.getElementById("inametxt").value.length==0){
			document.getElementById('iname').style.display="block";
		}else{
			document.getElementById('iname').style.display="none";
		}
		if(document.getElementById("cpricetxt").value.length==0){
			document.getElementById('cprice').style.display="block";
		}else{
			document.getElementById('cprice').style.display="none";
		}
		
		
	}
function commit(){
	Check();
	if(document.getElementById("dscarea").value.length>250||document.getElementById("cpricetxt").value.length==0||document.getElementById("inametxt").value.length==0){
		return false;
	}
	return confirm("确认发布？");
	
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
	<body onload="javascrtpt:load()">
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
  		<li role="presentation"  class="active"><a href="issuePage?myBasic.uid=${myBasic.uid}">我要发布</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	
		
	<div id="dhzs">
	<form action="commitIssue" method="post" action="upload.action" enctype="multipart/form-data">
	<table class="table table-hover">
  	<tbody>
  	<caption style="font-weight: bold;">我要发布</caption>
  		<tr>
	      <td class="wpg"><font color="red">*&nbsp;</font>物品名:</td>
	      <td><input id="inametxt" onkeyup="javascript:Check()" type="text" name="myItem.iname" style="width: 300px;" /><span id="iname"><font color="red">&nbsp;未填写！</font></span></td>
	    </tr>
	    <tr>
	      <td class="wpg">原价:</td>
	      <td><input type="number" name="myItem.oprice" style="width: 300px;" />￥</td>
	    </tr>
	    <tr>
	      <td class="wpg"><font color="red">*&nbsp;</font>发布报价:</td>
	      <td><input id="cpricetxt" onkeyup="javascript:Check()" type="number" name="myItem.cprice" style="width: 300px;" />￥<span id="cprice"><font color="red">&nbsp;未填写！</font></span></td>
	    </tr>
	    <tr>
	      <td class="wpg">所属类别:</td>
	      <td><input type="text" name="myItem.category" style="width: 300px;" /></td>
	    </tr>
	    <tr id="imgs">
	      <td align="right">添加图片:</td>
	      <td>
	      	<input type="file" name="image1" class="file-btn" accept="image/png, image/jpeg, image/gif, image/jpg" />
	      	<input type="file" name="image2" class="file-btn" accept="image/png, image/jpeg, image/gif, image/jpg" />
	      	<input type="file" name="image3" class="file-btn" accept="image/png, image/jpeg, image/gif, image/jpg" />
	      	<input type="file" name="image4" class="file-btn" accept="image/png, image/jpeg, image/gif, image/jpg" />
	      	<input type="file" name="image5" class="file-btn" accept="image/png, image/jpeg, image/gif, image/jpg" />
	      	<input type="file" name="image6" class="file-btn" accept="image/png, image/jpeg, image/gif, image/jpg" />
	      </td>
	    </tr>
	    <tr id="dsc">
	      <td align="right">物品描述:</td>
	      <td><textarea id="dscarea" onkeyup="javascript:Check()" name="myItem.dsc" style="width: 500px;height: 150px;"></textarea><span id="dscareahint"><font color="red">字数超出限制</font></span></td>
	    </tr>
  	</tbody>
	</table>
	<div align="center"><button type="submit" onclick="javascript:return commit();" class="btn btn-success" style="width:200px;">确认发布</button></div>
	<input type="hidden" name="myBasic.uid" value="${myBasic.uid}" />
	</form>
	</div>
	
	</body>
</html>
