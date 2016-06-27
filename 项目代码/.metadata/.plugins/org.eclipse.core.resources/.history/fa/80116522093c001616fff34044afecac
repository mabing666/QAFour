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

<title>Register</title>
</head>
<body>
	<div style="margin-left: 800px; margin-top: 300px">
		<div class="easyui-panel" title="Login"
			style="width: 300px; height: 280px;">
			<form style="padding: 10px 20px 10px 30px;">
				<table cellpadding="5">
					<tr>
						<td>User:</td>
						<td><input id="uname" class="easyui-validatebox textbox"
							data-options="required:true,validType:'length[3,10]'"></td>
					</tr>
					<br />
					<tr>
						<td>Password:</td>
						<td><input id="upwd" type="password"
							class="easyui-validatebox textbox"
							data-options="required:true,validType:'password'"></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input id="rupwd" type="password"
							class="easyui-validatebox textbox"
							data-options="required:true,validType:'password'"></td>
					</tr>

				</table>
				<br />
				<div style="padding: 5px; text-align: center;">
					<a onclick="postUserInfo()" class="easyui-linkbutton"
						icon="icon-ok">注册</a> <a href="#" class="easyui-linkbutton"
						icon="icon-cancel">取消</a>
				</div>
			</form>
		</div>
	</div>

</body>
<script>
	function postUserInfo() {
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/QAFour/REST/UserInfo/doRegister",
			contentType : "application/json",
			dataType : "json",
			data : getUserInfo(),
			success : function(data) {
				if (data != null) {
					alert("欢迎" + data.uname + ",登陆成功！")
					location.href = "/QAWebFour/topic.jsp"
				}
			}
		});
	}
	function getUserInfo() {
		var json = {
			'uname' : $('#uname').val(),
			'upwd' : $('#upwd').val()
		};
		return JSON.stringify(json);
	}
</script>
</html>