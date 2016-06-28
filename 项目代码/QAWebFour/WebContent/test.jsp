<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="./script/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="./script/themes/icon.css">
<link rel="stylesheet" type="text/css" href="./script/demo/demo.css">
<script type="text/javascript" src="./script/jquery.min.js"></script>
<script type="text/javascript" src="./script/json2.js"></script>
<link rel="stylesheet" type="text/css"
	href="./script/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="./script/themes/icon.css">
<script type="text/javascript" src="./script/jquery.easyui.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<h2>Search Category</h2>
	<p>Select a category and click search button or press enter key in input box to do searching.</p>
	<div style="margin:20px 0;"></div>
	<input class="easyui-searchbox" data-options="prompt:'Please Input Value',menu:'#mm',searcher:doSearch" style="width:300px"></input>
	<div id="mm">
		<div data-options="name:'all',iconCls:'icon-ok'">All News</div>
		<div data-options="name:'sports'">Sports News</div>
	</div>
	<script>
		function doSearch(value,name){
			alert('You input: ' + value+'('+name+')');
		}
	</script>
</body>
</html>