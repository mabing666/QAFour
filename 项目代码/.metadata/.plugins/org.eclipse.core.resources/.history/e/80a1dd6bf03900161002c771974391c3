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
<style>
.topics {
	margin-top: 50px;
	padding: 10px;
	width: 400px;
	height: auto;
	border-bottom: 1px solid #ccc;
}

a {
	margin-right: 50px;
	border: 1px solid #ccc;
}
</style>
<body>

	<script>
		var arr = [ '测试1', '测试2', '测试3', '测试4', '测试5', '测试6' ];
		for (var i = 0; i < arr.length; i++) {
			var a = document.createElement('a');
			a.innerHTML = arr[i];
			a.href = '#';
			a.class = 'easyui-linkbutton';
			(function(i) {
				a.onclick = function() {
					return myFunction(i)
				}
			})(i);
			document.body.appendChild(a);
			
		}
		function myFunction(i) {
			alert(i)
		}
	</script>
</body>
</html>