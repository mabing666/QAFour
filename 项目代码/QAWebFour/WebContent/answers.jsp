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
<script type="text/javascript" charset="UTF-8">
	window.UEDITOR_HOME_URL = "/QAWebFour/ueditor/";//编辑器项目路径
</script>
<title>回答</title>
</head>


<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="main">
		<div id="wrapper" class="wrapper">
			<div class="clear"></div>
			<div id="answers_qstopic" class="answers_qstopic"></div>
			<div class="clear"></div>
			<div id="answers_question" class="answers_question"></div>
			<div id="answers_answer" class="answers_answer"></div>
		</div>
		<div id="extend" class="extend"></div>
		<div id="answers_window" class="easyui-window answers_window"
			title="回答"
			data-options="iconCls:'icon-save',closed:true,
			modal:true,draggable:false,"
			style="width: 700px; height: 700px; padding: 5px;">
			<a id="answinqid" class="answinqid" style="display: none;"></a>

			<div class="answers_ascontent">
				<!-- 配置文件 -->
				<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
				<!-- 编辑器源码文件 -->
				<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
				<!-- 实例化编辑器 -->
				<script type="text/javascript">
					var ue3 = UE.getEditor('ascontainer');
				</script>
				<!-- 加载编辑器的容器 -->
				<textarea id="ascontainer" class="ascontainer">
			</textarea>
				<br /> <br /> <a onclick="postAnswer();" class="easyui-linkbutton"
					iconCls="icon-ok">发布</a>

			</div>
			<style scoped="scoped">
.main {
	background-color: #FFFFFF;
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	width: 960px;
	height: auto;
}

.wrapper {
	background-color:;
	width: 600px;
	height: 800px;
	float: left;
}

.extend {
	float: right;
	width: 260px;
	background-color: #FFF;
	height: 800px;
}

.answers_qstopic {
	background-color: #FFFFFF;
	float: left;
	width: 600px;
}

.answers_qstopic ul {
	list-style: none;
	margin-top: 15px;
}

.answers_qstopic ul li {
	display: inline-block;
	margin: 5px;
}

.answers_qstopic ul li a {
	cursor: pointer;
	background-color: #FFF0F5;
	color: #FF00FF;
	border: solid 1px white;
	padding: 4px;
	padding-left: 15px;
	padding-right: 15px;
	border-radius: 40px;
}

.answers_qstopic ul li a:hover {
	background-color: #FFB6C1;
}

.answers_question {
	background-color: #FFF;
}

.answers_question ul {
	list-style: none;
	margin-right: 40px;
}

.answers_question ul li {
	
}

.qstitle {
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
	cursor: pointer;
	color: #99CCFF;
	font-style: italic;
	color: #99CCFF;
}

.qsentend a:hover {
	color: #FF00FF;
}

.answers_answer {
	background-color: #FFF;
}

.answers_answer ul {
	list-style: none;
	margin-right: 40px;
}

.asuname_content {
	font-weight: bold;
}

.ascontent {
	font-size: 15px;
	font-family: "微软雅黑";
	padding-bottom: 20px;
	border-bottom: #ccc;
}

.astime {
	font-style: italic;
	color: #aaa;
}

.clear {
	clear: both;
}
</style>
		</div>
</body>
<script>
	/*easyui层级*/
	$("#answers_window").window({
		onOpen : function() {
			$(".panel").css("z-index", "999");
			$(".window-shadow").css("z-index", "998");
			$(".window-mask").css("z-index", "997")
		},
		onMove : function(left, top) {
			$(".panel").css("z-index", "999");
			$(".window-shadow").css("z-index", "998");
		},
		onResize : function(width, height) {
			$(".panel").css("z-index", "999");
			$(".window-shadow").css("z-index", "998");

		}

	});
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/QAFour/REST/Answer/getListByQID/"
				+ GetQueryString("QID"),
		contentType : "application/json",
		dataType : "json",
		data : null,
		success : function(data) {
			var htm = "<ul>";
			for (var i = 0; i < data.length; ++i) {
				htm += "<li><a class='asuname_content'>" + data[i].asuser.uname
						+ "," + data[i].asuser.ucontent + "</a></li>"
						+ "<li><a class='astime'>" + data[i].astime
						+ "</a></li><br/>" + "<li><div class='ascontent'>"
						+ data[i].ascontent + "</div></li>";
			}
			htm += "</ul>";
			$("#answers_answer").html(htm)
		}
	});
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/QAFour/REST/Question/getTopicByTPID/"
				+ GetQueryString("QID"),
		contentType : "application/json",
		dataType : "json",
		data : null,
		success : function(data) {
			var htm = "<ul>" + "<li><a class='qstitle' onclick='toAnswers("
					+ data.ID + ")'>" + data.qstitle + "</a></li>"
					+ "<li><div class='qsuser'>" + data.qsuser.uname + ", "
					+ data.qsuser.ucontent + "</div><div class='qstime'>"
					+ data.qstime + "</div></li><br/>"
					+ "<li><div class='qscontent'>" + data.qscontent
					+ "</div></li>"
					+ "<li><div class='qsextend'><a onclick='toQAnswer("
					+ data.ID + ")'>我要回答</a></li></div>";
			htm += "</ul>";
			$("#answers_question").html(htm)
		}
	});
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/QAFour/REST/Topic/getListByQID/"
				+ GetQueryString("QID"),
		contentType : "application/json",
		dataType : "json",
		data : null,
		success : function(data) {
			var htm = "<ul>";
			/* alert(data.length) */
			for (var i = 0; i < data.length; ++i) {
				htm += "<li><a onclick='toTopic(" + data[i].ID + ")'>"
						+ data[i].tpname + "</a></li>";
			}
			htm += "</ul>";
			$("#answers_qstopic").html(htm)
		}
	});
	function postAnswer() {
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/QAFour/REST/Answer/createQAnswer",
			contentType : "application/json",
			dataType : "json",
			data : getAnswer(),
			success : function(data) {
				/* alert(data); */
				location.href = "/QAWebFour/answers.jsp?QID=" + data.QID.ID;
			},
			error : function(data) {
				alert(data);
			}
		});
	}
	function getAnswer() {
		var json = {
			'ascontent' : UE.getEditor('ascontainer').getContent(),
			'QID' : $("#answinqid").text(),
			'UID' : getCookieValue("UID")
		};
		return JSON.stringify(json);
	}
	function toQAnswer(qid) {
		$("#answers_window").window("open");
		/* alert(qid) */
		$("#answinqid").text(qid)
		/* alert($("#wasqid").text()) */
	}
	function toTopic(id) {
		location.href = "/QAWebFour/questions.jsp?tpid=" + id;
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