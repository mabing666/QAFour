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
<link rel="stylesheet" type="text/css" href="./css/header.css">
<script type="text/javascript" src="./script/jquery.easyui.min.js"></script>

<title>话题广场</title>
</head>
<style>
.ftopics {
	margin-top: 50px;
	padding: 10px;
	width: 400px;
	height: auto;
	border-bottom: 1px solid #ccc;
}

.ftopics button {
	margin-right: 15px;
}

.stopics {
	margin-top: 50px;
	margin-left: 50px;
	padding: 10px;
	width: 350px;
	height: auto;
	border-bottom: 1px solid #ccc;
	padding: 10px;
}

.stopics a {
	margin-right: 20px;
	border: 1px solid #ccc;
	padding: 5px;
	border-radius: 5px;
}
</style>

<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="ftopics" id="ftopics"></div>
	<div class="stopics" id="stopics"></div>
</body>
<script>
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/QAFour/REST/Topic/getAllRootTopic",
		contentType : "application/json",
		dataType : "json",
		data : null,
		success : function(data) {
			var htm = "";
			/* alert(data.length) */
			for (var i = 0; i < data.length; ++i) {
				htm += "<button onclick='getAllTopics(" + data[i].ID
						+ ")' class='easyui-linkbutton'>" + data[i].tpname
						+ "</button>";
			}
			$("#ftopics").html(htm)
			getAllTopics(data[0].ID)
		}
	});

	function getAllTopics(id) {
		$.ajax({
			type : "GET",
			url : "http://localhost:8080/QAFour/REST/Topic/getAllRootTopic/"
					+ id,
			contentType : "application/json",
			dataType : "json",
			data : null,
			success : function(data) {
				var htm = "";
				/* alert(data.length) */
				for (var i = 0; i < data.length; ++i) {
					htm += "<a onclick='toQuestions(" + data[i].ID
							+ ")' class='easyui-linkbutton'>" + data[i].tpname
							+ "</a>";
				}
				$("#stopics").html(htm)
			}
		});
	}

	function toQuestions(id) {
		location.href = "/QAWebFour/questions.jsp?tpid=" + id;
	}
</script>
</html>