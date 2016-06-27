<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="./script/json2.js"></script>
<script type="text/javascript" src="./script/cookie.js"></script>
<script type="text/javascript" charset="UTF-8">
   window.UEDITOR_HOME_URL = "/QAWebFour/ueditor/";//编辑器项目路径
</script>
<div class="navi">
	<ul>
		<li><a onclick="question()">提问</a></li>
		<li><a id="uname" class="uname"></a></li>
	</ul>
</div>

<div id="wquestion" class="easyui-window wquestion" title="提问"
	data-options="iconCls:'icon-save',closed:true, modal:true,"
	style="width: 700px; height: 600px; padding: 5px;">
	<div class="head_title">
		<a>问题</a><br /> <input id="qstitle" class="easyui-textbox qstitle"
			style="height: 32px; font-size: 20px;"
			data-options="required:true,validType:'length[1,50]'" /><br />
	</div>
	<br />
	<!-- 配置文件 -->
	<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
	<!-- 编辑器源码文件 -->
	<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
	<!-- 实例化编辑器 -->
	<script type="text/javascript">
		var ue = UE.getEditor('container');
	</script>
	<!-- 加载编辑器的容器 -->
	<div class="ueditor">
		<a>描述</a>
		<textarea id="container" class="container">
	</textarea>
	</div>
	<br /> <br /> <a>选择话题</a><input id="qstopic"
		class="easyui-combobox qstopic" style="width: 250px"
		data-options="
					url:'http://localhost:8080/QAFour/REST/Topic/getAllTopic',
					method:'get',
					valueField:'ID',
					textField:'tpname',
					multiple:true,
					panelHeight:'auto',
					iconCls:'icon-search'
			" />
	<br /> <br /> <a class="easyui-linkbutton" iconCls="icon-ok"
		onclick="postQuestion()">提问</a>
	<style scoped="scoped">
.head_title {
	margin-top: 20px;
	width: auto;
	height: 70px;
}

.head_title a {
	font-size: 20px;
	font-family: "微软雅黑"
}

.ueditor {
	margin-top: 20px;
}

.ueditor a {
	font-size: 20px;
	font-family: "微软雅黑"
}

.head_title input {
	width: 400px;
	height: 32px;
	font-size: 40px;
	font-family: "微软雅黑";
}
</style>
</div>
<script>
	$("#uname").html(getCookieValue("uname"))
	/* //alert(getCookieValue("uname")) */
	$("#wquestion").window({
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
	function postQuestion() {
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/QAFour/REST/Question/createQuestion",
			contentType : "application/json",
			dataType : "json",
			data : getQuestion(),
			success : function(data) {
				alert(data);
				location.href = "/QAWebFour/answers.jsp?QID=" + data.ID;
			},
			error : function(data) {
				alert(data);
			}
		});
	}
	function getQuestion() {
		var json = {
			'qscontent' : UE.getEditor('container').getContent(),
			'qstitle' : $('#qstitle').val(),
			'UID' : "1",
			'TPID' : $('#qstopic').combobox("getValues") + ""
		};
		/* alert(json.TPID); */
		return JSON.stringify(json);
	}

	function question() {
		$("#wquestion").window("open")
	}
</script>