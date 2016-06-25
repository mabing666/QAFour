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

<body>
	<!-- 加载编辑器的容器 -->
	<div class="easyui-panel qspanel">
		<a>问题：</a><input id="qstitle" class="easyui-validatebox qstitle"
			data-options="required:true,validType:'length[1,100]'" />
			
		<script id="container" class="qscontent" name="content"
			type="text/plain">
   		 </script>
		<!-- 配置文件 -->
		<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
		<!-- 编辑器源码文件 -->
		<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
		<!-- 实例化编辑器 -->
		<script type="text/javascript">
			var ue = UE.getEditor('container');
		</script>
		
		<div id="qstopic">jsfa</div>
	
	</div>


	<style scoped="scoped">
.qstitle {
	height: 20px;
	width: 400px;
	margin: 0;
	padding: 0 2px;
	box-sizing: content-box;
}

.qspanel {
	width: 700px;
	height: autopx;
	padding: 10px;
}

.qscontent {
	width: 960px;
}
</style>
</body>
</html>