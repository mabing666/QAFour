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

<title>提问</title>
</head>
<style>
body {
	margin: 0 auto;
	text-align: center;
}

.title {
	margin: 0 auto;
}

.title a {
	font-size: 20px;
}

.qscontent {
	width: 600px;
}
</style>
<body>
	<!-- 加载编辑器的容器 -->
	<div class="easyui-panel qspanel">
		<ul>
			<li>
				<div class="title">
					<a>问题：</a><input id="qstitle" class="easyui-validatebox qstitle"
						data-options="required:true,validType:'length[1,100]'" />
				</div>
			</li>
			<li><div class="qscontent">
					<textarea id="container" class="qscontent" name="content">
   			 </textarea>
					<!-- 配置文件 -->
					<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
					<!-- 编辑器源码文件 -->
					<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
					<!-- 实例化编辑器 -->
					<script type="text/javascript">
						var ue = UE.getEditor('container');
					</script>
				</div></li>

			<li><div id="qstopic">jsfa</div></li>
		</ul>

	</div>


	<style scoped="scoped">
.qstitle {
	font-size: 20px;
	font-family: "微软雅黑";
	height: 30px;
	width: 400px;
	margin: 0;
	padding: 0 2px;
	box-sizing: content-box;
	height: 30px;
}

.qspanel {
	width: 700px;
	height: autopx;
	padding: 10px;
}
.qspanel ul{
	margin: 0px auto;
}
</style>
</body>
</html>