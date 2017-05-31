<%--
  Created by IntelliJ IDEA.
  User: Mosiki
  Date: 2017/2/19
  Time: 21:18
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加作品</title>
</head>
<body>
<form action="/manage/bookV1/add" method="post">
    渠道ID：<input type="text" name="pid" ><br/>
    渠道作品网址：<input type="text" name="bookUrl"><br/>
    <input type="submit" value="保存">
</form>
</body>
</html>
