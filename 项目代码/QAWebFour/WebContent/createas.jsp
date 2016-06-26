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
<link rel="stylesheet" type="text/css" href="./css/header.css">
<script type="text/javascript" src="./script/jquery.min.js"></script>
<script type="text/javascript" src="./script/json2.js"></script>
<script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
<title>Q&A</title>
<title>Insert title here</title>
</head>
<body>
	<form>
		<input id="ascontent" class="ascontent" /> <input id="uid"
			class="uid" /> <input id="qid" class="qid" />
		<a onclick="post()" class="easyui-linkbutton">提交</a>
	</form>
</body>
<script>
	function post() {
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/QAFour/REST/Answer/createQAnswer",
			contentType : "application/json",
			dataType : "json",
			data : getAAnswer(),
			success : function(data) {
				alert(data);
			},
			error:function(data){
				alert(data);
			}
		});
	}
	function getAAnswer() {
		var json = {
			'ascontent' : $('#ascontent').val(),
			'UID' : $('#uid').val(),
			'QID' : $('#qid').val()
		};
		alert(json);
		return JSON.stringify(json);
	}
</script>
</html>