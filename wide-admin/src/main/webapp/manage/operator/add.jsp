<%--
  Created by IntelliJ IDEA.
  User: Mosiki
  Date: 2017/2/18
  Time: 16:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../../static/css/bootstrap-combined.min.css" rel="stylesheet">
    <title>添加渠道</title>
</head>
<body>
    <form action="/manage/operatorV1/add" method="post">
        渠道名称：<input type="text" name="name" ><br/>
        渠道网址：<input type="text" name="url"><br/>
        CSS选择器：<input type="text" name="cssQuery"><br/>
        内容编码：<input type="text" name="encode"><br/>
        是否绝对路径：<input type="text" name="isAbsolute"><br/>
        <input type="submit" value="保存">
    </form>
</body>
</body>
</html>
