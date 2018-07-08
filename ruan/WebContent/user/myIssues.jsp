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
		left: 700px;
		top: 160px;
		width: 500px;
		height: auto;
		margin-bottom: 200px;
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
function udmyitem(){
	document.getElementById("oprice").innerHTML="<input type=\"number\" name=\"myItem.oprice\" class=\"form-control\" value=\"${myItem.oprice}\"/>";
	document.getElementById("cprice").innerHTML="<input type=\"number\" name=\"myItem.cprice\" class=\"form-control\" value=\"${myItem.cprice}\"/>";
	document.getElementById("dsc").innerHTML="<textarea name=\"myItem.dsc\" value=\"${myItem.dsc}\" style=\"width: 300px;height: 150px;\">${myItem.dsc}</textarea>";
	document.getElementById("cbutton").innerHTML="<input type=\"submit\" class=\"btn btn-success\" style=\"width: 200px;\" value=\"确认\"/> ";
}
function inform(){
 	cprice=document.getElementById('cprice').value;
 	oprice=document.getElementById('oprice').value;
	if(oprice.isNaN){
        alert("原价输入无效");
        return false;
    }else if(cprice.isNaN){
        alert("发布报价输入无效");
        return false;
    }else{
    	return alert("修改成功!");
    	
    }
}
</script>
	<body onload="javascript:check()">
	<form action="search">
	<div class="searchdiv">
    <div class="input-group">
      <input id="searchtxt" name="searchtxt" type="text" class="form-control" aria-label="..." placeholder="请输入所查找的物品/用户/地区">
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
  	<input id="searchType" type="hidden" name="searchType">
	</form>
	
	<div class="daohang">
		<ul class="nav nav-pills nav-stacked">
  		<li role="presentation"><a href="myInform?myBasic.uid=${myBasic.uid}">我的资料</a></li>
  		<li role="presentation" class="active"><a href="myIssues?myBasic.uid=${myBasic.uid}">我的发布</a></li>
  		<li role="presentation"><a href="#"></a></li>
  		<li role="presentation"><a href="issuePage?myBasic.uid=${myBasic.uid}">我要发布</a></li>
  		<li role="presentation"><a href="login">退出登录</a></li>
		</ul>
	</div>
	
	<div id="dhzs">
	<table class="table table-hover">
  	<tbody>
  	<caption style="font-weight: bold;">我的发布</caption>
  	<thead>
  		<td style="font-weight: bold;">物品名</td>
  		<td style="font-weight: bold;">发布报价</td>
  		<td style="font-weight: bold;">发布日期</td>
  	</thead>
  	<s:iterator value="myItems" var="item">
	    <tr>
	      <td><a href="myIssues?myBasic.uid=${myBasic.uid}&myItem.iid=${item.iid}">${item.iname}</a></td>
	      <td>${item.cprice}</td>
	      <td>${item.date}</td>
	    </tr>
  	</s:iterator>
  	</tbody>
	</table>
	</div>
		<div id="itemtable">
		<form action="updateItem">
		<div align="right"><input type="button" class="btn btn-default" onclick="javascript:udmyitem();" value="修改物品信息"/></div>
		<table class="table table-hover">
		<tbody>
	  	<caption style="font-weight: bold;">物品详细</caption>
	    <tr>
	      <td class="wpg">物品名:</td>
	      <td id="iname">${myItem.iname}</td>
	    </tr>
	    <tr>
	      <td class="wpg">原价:</td>
	      <td id="oprice">${myItem.oprice}</td>
	    </tr>
	    <tr>
	      <td class="wpg">发布报价:</td>
	      <td id="cprice">${myItem.cprice}</td>
	    </tr>
	    <tr>
	      <td class="wpg">所属类别:</td>
	      <td id="category">${myItem.category}</td>
	    </tr>
	    <tr>
	      <td class="wpg">发布日期:</td>
	      <td id="date">${myItem.date}</td>
	    </tr>
	    <tr>
	      <td class="wpg">物品描述:</td>
	      <td id="dsc" style="word-break:break-all;width:300px;">${myItem.dsc}</td>
	    </tr>
	    <tr>
	      <td class="wpg">物品图片:</td>
	      <td class="image" style="background-image:url(${myItem.image1});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${myItem.image2});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${myItem.image3});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${myItem.image4});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${myItem.image5});" ></td>
	    </tr>
	    <tr>
	      <td class="wpg"></td>
	      <td class="image" style="background-image:url(${myItem.image6});" ></td>
	    </tr>
	    </tbody>
		</table>
		<input type="hidden" name="myBasic.uid" value="${myBasic.uid}" />
    	<input type="hidden" name="myItem.iid" value="${myItem.iid}" />
    	<input type="hidden" name="myItem.uid" value="${myItem.uid}" />
    	<input type="hidden" name="myItem.date" value="${myItem.date}" />
    	<input type="hidden" name="myItem.iname" value="${myItem.iname}" />
    	<input type="hidden" name="myItem.category" value="${myItem.category}" />
    	<input type="hidden" name="myItem.image1" value="${myItem.image1}" />
    	<input type="hidden" name="myItem.image2" value="${myItem.image2}" />
    	<input type="hidden" name="myItem.image3" value="${myItem.image3}" />
    	<input type="hidden" name="myItem.image4" value="${myItem.image4}" />
    	<input type="hidden" name="myItem.image5" value="${myItem.image5}" />
    	<input type="hidden" name="myItem.image6" value="${myItem.image6}" />
    	<div id="cbutton" align="center"></div>
    	</form>
		</div>
		
	</body>
</html>
