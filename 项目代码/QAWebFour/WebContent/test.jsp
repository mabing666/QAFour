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

<link rel="stylesheet" type="text/css" href="./css/normalize.css" />
<link rel="stylesheet" type="text/css" href="./css/default.css">
<link href='./css/horsey.css' rel='stylesheet' type='text/css' />
<link href='./css/example.css' rel='stylesheet' type='text/css' />
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

	<div class="htmleaf-container">
		<header class="htmleaf-header">
		<h1>
			js实用表单模糊搜索和自动提示插件 <span>A Tiny and blazing-fast fuzzy search
				in JavaScript</span>
		</h1>
		<div class="htmleaf-links">
			<a class="htmleaf-icon icon-home" href="http://www.htmleaf.com/"
				title="jQuery之家" target="_blank"><span> jQuery之家</span></a> <a
				class="htmleaf-icon icon-arrow-right3"
				href="http://www.htmleaf.com/jQuery/Form/201503081484.html"
				title="返回下载页" target="_blank"><span> 返回下载页</span></a>
		</div>
		</header>
		<div class="htmleaf-content">
			<div class='examples'>
				<div class='parent'>
					<label for='hy'>Enter the name of a fruit: </label> <input id='hy' />
					<pre>
			      <code>
			horsey(input, {
			  suggestions: ['banana', 'apple', 'orange']
			});
			      </code>
			    </pre>
				</div>
			</div>
			<div class='parent'>
				<label for='ly'>Lazy load the fruits, useful for AJAX! <i>(loading
						starts when the field is focused)</i></label>
				<div>
					<i id='lyr'>Being lazy...</i>
				</div>
				<input id='ly' />
				<pre>
			      <code>
			horsey(input, {
			  suggestions: function (done) {
			    setTimeout(function () {
			      done(['banana', 'apple', 'orange']);
			    }, 2000);
			  }
			});
			      </code>
			    </pre>
			</div>
			<div class='parent'>
				<label for='kv'>You can also use "key value pairs": </label> <input
					id='kv' />
				<pre>
			      <code>
			horsey(input, {
			  suggestions: [
			    { value: 'banana', text: 'Bananas from Amazon Rainforest' },
			    { value: 'apple', text: 'Red apples from New Zealand' },
			    { value: 'orange', text: 'Oranges from Moscow' },
			    { value: 'lemon', text: 'Juicy lemons from Amalfitan Coast' }
			  ]
			});
			      </code>
			    </pre>
			</div>
			<div class='parent'>
				<label for='ig'>But why stop there? You can render the
					suggestion however you like! </label> <input id='ig' />
				<pre>
			      <code>
			horsey(input, {
			  suggestions: [
			    { value: 'banana', text: 'Bananas from Amazon Rainforest' },
			    { value: 'apple', text: 'Red apples from New Zealand' },
			    { value: 'orange', text: 'Oranges from Moscow' },
			    { value: 'lemon', text: 'Juicy lemons from Amalfitan Coast' }
			  ],
			  render: function (li, suggestion) {
			    var image = '&lt;img class="autofruit" src="img/fruits/' + suggestion.value + '.png" /&gt; ';
			    li.innerHTML = image + suggestion.text;
			  }
			});
			      </code>
			    </pre>
			</div>
		</div>
	</div>
	<div class="related">
		<h3>如果你喜欢这个插件，那么你可能也喜欢:</h3>
		<a href="http://www.htmleaf.com/jQuery/Form/201502251419.html"> <img
			src="img/1.jpg" width="300" alt="实用的轻量级js自动完成autocomplete插件" />
			<h3>实用的轻量级js自动完成autocomplete插件</h3>
		</a> <a href="http://www.htmleaf.com/jQuery/Form/20141108423.html"> <img
			src="img/2.jpg" width="300" alt="jQuery实时搜索插件-HideSeek" />
			<h3>jQuery实时搜索插件-HideSeek</h3>
		</a>
	</div>
	</div>

	<script src='./script/horsey.js'></script>
	<script src='./script/example.js'></script>
	<!-- 加载编辑器的容器 -->
	<script id="container" name="content" type="text/plain">
        这里写你的初始化内容
    </script>
	<!-- 配置文件 -->
	<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
	<!-- 编辑器源码文件 -->
	<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
	<!-- 实例化编辑器 -->
	<script type="text/javascript">
		var ue = UE.getEditor('container');
	</script>
</body>
</html>