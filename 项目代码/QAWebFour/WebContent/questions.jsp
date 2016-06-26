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

<title>问题广场</title>
</head>
<style>
.main {
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	width: 960px;
	height: auto;
}

.content {
	width: 600px;
	height: auto;
	float: left;
}

.expend {
	width: 260;
	heitht: auto;
	float: right;
}

.favourite {
	height: auto;
	float: left;
	background-color: #FFFFFF;
	width: 600px;
}

.favourite ul {
	list-style: none;
}

.favourite ul li {
	display: inline-block;
}

.favourite ul li a {
	cursor: pointer;
	background-color: #FFF0F5;
	color: #FF00FF;
	border: solid 1px white;
	padding: 4px;
	padding-left: 15px;
	padding-right: 15px;
	border-radius: 40px;
}

.favourite ul li a:hover {
	background-color: #FFB6C1;
}

.detail {
	width: 260px;
	height: auto;
	float: right;
	padding: 5px;
	float: right;
	border-radius: 5px;
	border-bottom: 1px solid #ccc;
}

.tpfather {
	margin-top: 20px;
	width: 260px;
	height: 200px;
	float: right;
	background-color: #FFFFFF;
	width: 260px;
}

.tpfather a {
	text-decoration: none;
	margin: 5px;
	padding: 3px;
	border: 1px solid #ccc;
	border-radius: 5px
}

.tpson {
	margin-top: 20px;
	width: 260px;
	height: 200px;
	float: right;
	background-color: #FFFFFF;
	width: 260px;
}

.tpson a {
	text-decoration: none;
	margin: 10px;
	padding: 3px;
	border: 1px solid #ccc;
	border-radius: 5px
}

.title {
	margin-top: 10px;
	width: 300px;
	height: 30px;
	float: left;
	background-color: #FFFFFF;
}

.sort {
	margin-top: 10px;
	height: 30px;
	float: right;
	backaground-color: #FFFFFF;
	height: 30px;
}

.question {
	margin-top: 20px;
	width: 600px;
	height: auto;
	background-color: #FFFFFF;
	width: 600px;
}

.question ul {
	list-style: none;
	margin-right: 40px;
}

.qstitle {
	margin-top: 30px;
	font-family: "微软雅黑";
	font-size: 20px;
}

.qsuser {
	margin-top: 5px;
	font-style: italic;
	font-family: "微软雅黑";
	font-size: 15px;
}

.qscontent {
	font-size: 15px;
}

.qsextend {
	padding-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.qsextend a {
	color: #99CCFF;
	font-style: italic;
}

.clear {
	clear: both;
}
</style>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="main">
		<div class="content">
			<h2>关注话题</h2>
			<div class="favourite" id="favourite"></div>
			<div class="clear" id="clear"></div>

			<div class="title" id="title"></div>
			<div class="sort" id="sort">
				<a class="easyui-linkbutton">热门排序</a> <A>|</A> <a
					class="easyui-linkbutton">时间排序</a>
			</div>
			<div class="clear" id="clear"></div>

			<div class="question" id="question"></div>
		</div>
		<div class="expend">

			<div class="detail" id="detail"></div>
			<div class="clear" id="clear"></div>

			<div class="tpfather" id="tpfather"></div>
			<div class="clear" id="clear"></div>

			<div class="tpson" id="tpson"></div>
			<div class="clear" id="clear"></div>


		</div>
	</div>
</body>
<script>
	/*
		获得用户关注的话题
	 */
	$
			.ajax({
				type : "GET",
				url : "http://localhost:8080/QAFour/REST/Topic/getUserFavourite/"
						+ "1",
				contentType : "application/json",
				dataType : "json",
				data : null,
				success : function(data) {
					var htm = "<ul>";
					/* alert(data.length) */
					for (var i = 0; i < data.length; ++i) {
						htm += "<li><a onclick='toQuestions(" + data[i].ID
								+ ")'>"
								+ data[i].tpname + "</a></li>";
					}
					htm += "</ul>"
					$("#favourite").html(htm)
				}
			});
	/*
		获得当前话题具体信息
	 */
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/QAFour/REST/Topic/getTopic/"
				+ GetQueryString("tpid"),
		contentType : "application/json",
		dataType : "json",
		data : null,
		success : function(data) {
			var detail = "暂无描述"
			if (data.tpdetail != null)
				detail = data.tpdetail
			var htm = "<h2>描述</h2><a>" + detail + "</a><br/><br/>";
			$("#detail").html(htm);
			$("#title").html("<h2>" + data.tpname + "</h2>");
		}
	});
	/**
		获得父话题
	 */
	$
			.ajax({
				type : "GET",
				url : "http://localhost:8080/QAFour/REST/Topic/getFatherTopic/"
						+ GetQueryString("tpid"),
				contentType : "application/json",
				dataType : "json",
				data : null,
				success : function(data) {
					var htm = "<h2>父话题</h2><br/><br/>";
					if (data == null) {
						htm += "暂无父话题"
					} else
						htm += "<a href='http://localhost:8080/QAWebFour/questions.jsp?tpid="
								+ data.ID + "'>" + data.tpname + "</a>";
					$("#tpfather").html(htm);
				}
			});

	/*
		获得子话题
	 */
	$
			.ajax({
				type : "GET",
				url : "http://localhost:8080/QAFour/REST/Topic/getSonTopic/"
						+ GetQueryString("tpid"),
				contentType : "application/json",
				dataType : "json",
				data : null,
				success : function(data) {
					var htm = "<h2>子话题</h2><br/><br/>";
					if (data[0] == null) {
						htm += "暂无子话题"
					} else
						for (var i = 0; i < data.length; ++i) {
							htm += "<a href='http://localhost:8080/QAWebFour/questions.jsp?tpid="
									+ data[i].ID
									+ "'>"
									+ data[i].tpname
									+ "</a>";
						}
					$("#tpson").html(htm);
				}
			});
	/**
		问题列表（时间顺序）
	 */
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/QAFour/REST/Question/getListByTPID/"
				+ GetQueryString("tpid"),
		contentType : "application/json",
		dataType : "json",
		data : null,
		success : function(data) {
			var htm = "<br/><ul>";
			/* alert(data.length) */
			for (var i = 0; i < data.length; ++i) {
				htm += "<li><a class='qstitle' onclick='toAnswers("
						+ data[i].ID + ")'>" + data[i].qstitle + "</a></li>"
						+ "<li><div class='qsuser'>" + data[i].qsuser.uname
						+ ", " + data[i].qsuser.ucontent
						+ "</div><div class='qstime'>" + data[i].qstime
						+ "</div></li><br/>" + "<li><div class='qscontent'>"
						+ data[i].qscontent + "</div></li><br/>"
						+ "<li><div class='qsextend'><a>评论</a></li><br/><br/></div>"
						;
			}
			htm += "</ul><br/>";
			$("#question").html(htm)
		}
	});
	function toQuestions(id) {
		location.href = "/QAWebFour/questions.jsp?tpid=" + id;
	}
	function toAnswers(id){
		location.href="/QAWebFour/answers.jsp?QID=" + id;
	}
	function GetQueryString(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if (r != null)
			return unescape(r[2]);
		return null;
	}
</script>
</html>