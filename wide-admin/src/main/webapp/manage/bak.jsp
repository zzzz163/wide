<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="UTF-8"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <%@ include file="/_static/common/head_resource.jsp" %>
    <title>后台管理系统</title>
</head>
<body>
<div class="container">
    <div class="content-search">
        <form class="layui-form layui-inline" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">输入框</label>
                <div class="layui-input-block">
                    <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">辅助文字</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">选择框</label>
                <div class="layui-input-block" width="20%">
                    <select name="city" lay-verify="required">
                        <option value=""></option>
                        <option value="0">北京</option>
                        <option value="1">上海</option>
                        <option value="2">广州</option>
                        <option value="3">深圳</option>
                        <option value="4">杭州</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">复选框</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="like[write]" title="写作">
                    <input type="checkbox" name="like[read]" title="阅读" checked>
                    <input type="checkbox" name="like[dai]" title="发呆">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">开关</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="switch" lay-skin="switch">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="男" title="男">
                    <input type="radio" name="sex" value="女" title="女" checked>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>


    <div class="handle-btn">
        <button class="layui-btn layui-btn-small" data-url="add.html"><i class="layui-icon">&#xe654;</i>添加</button>
        <button class="layui-btn layui-btn-small layui-btn-normal" data-url="edit.html"><i class="layui-icon">&#xe642;</i>编辑</button>
        <button class="layui-btn layui-btn-small layui-btn-danger" data-url="delete.html"><i class="layui-icon">&#xe640;</i> 删除</button>
        <button class="layui-btn layui-btn-small layui-btn-warm" data-url="add.html"><i class="layui-icon">&#xe638;</i> tab新页</button>
    </div>

    <%--<div class="table-list">
        <table class="layui-table" lay-skin="line">
            <thead>
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>兴趣爱好</th>
                    <th>座右铭</th>
                </tr>
            </thead>
            <tbody>
                <tr data-assign="1">
                    <td>1</td>
                    <td>飞星</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="2">
                    <td>2</td>
                    <td>李四</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="3">
                    <td>3</td>
                    <td>王老五</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="4">
                    <td>4</td>
                    <td>张六哥</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="5">
                    <td>5</td>
                    <td>始发站</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="6">
                    <td>6</td>
                    <td>残花刘</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="7">
                    <td>7</td>
                    <td>新若瑄</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="8">
                    <td>8</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="9">
                    <td>9</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="10">
                    <td>10</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="9">
                    <td>9</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="10">
                    <td>10</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="9">
                    <td>9</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="10">
                    <td>10</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="9">
                    <td>9</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
                <tr data-assign="10">
                    <td>10</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>28</td>
                    <td>摄影 郊游</td>
                    <td>心若向阳便是晴天</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>--%>
    <%--<div id="table-pages" style="text-align:center"></div>--%>

    <%@ include file="/_static/common/footer_resource.jsp" %>
</body>
</html>