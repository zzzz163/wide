<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>后台管理系统</title>
    <%--<link rel="stylesheet" href="/_static/layui/css/layui.css"/>--%>
    <%--<link rel="stylesheet" href="/_static/manage/css/admin.css"/>--%>
    <%@ include file="/_static/common/head_resource.jsp" %>
</head>
<body>
    <!-- 布局容器 -->
    <div class="layui-layout layui-layout-admin">
        <!-- 头部 -->
        <div class="layui-header">
            <div class="layui-main">
				<div class="top-left">
					<!-- logo -->
					<a href="/" class="logo">GTF-Admin</a>
					
					<a href="javascript:;" class="menu-flexible">
						<i class="layui-icon">&#xe635;</i> 
					</a>
				</div>
                <!-- 头部一级菜单 -->
                <ul class="layui-nav top-menu" lay-filter="top-menu">
                    <li class="layui-nav-item layui-this"><a href="javascript:;">我的面板</a></li>
                    <li class="layui-nav-item"><a href="javascript:;">系统管理</a></li>
                    <li class="layui-nav-item"><a href="javascript:;">内容管理</a></li>
                    <li class="layui-nav-item"><a href="javascript:;">应用管理</a></li>
                    <li class="layui-nav-item"><a href="javascript:;">会员管理</a></li>
                </ul>
                <!-- 头部右侧操作 -->
                <ul class="layui-nav operate">
                    <li class="layui-nav-item">
                        <a href="javascript:;">进入前台</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">131****5931</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;">个人信息</a>
                            </dd>
                            <dd>
                            	<a href="javascript:;">修改密码</a>
                            </dd>
                            <dd>
                                <a href="javascript:;">退出登录</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 左侧菜单 -->
        <div class="layui-side layui-bg-black left-menu-all">
            <div class="layui-side-scroll">
            	<ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
                    <li class="layui-nav-item layui-this">
                        <a href="javascript:;" data-url="home.jsp" data-id="1">后台首页</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">抓取管理</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" data-url="/manage/grab/sort/book" data-id="2">抓取分类书籍</a>
                            </dd>
							<dd>
                                <a href="javascript:;" data-url="/manage/grab/sort/info" data-id="3">抓取书籍</a>
                            </dd>
                            <dd>
                                <a href="javascript:;" data-url="/manage/grab/book/sources" data-id="4">抓取书籍源</a>
                            </dd>
                            <dd>
                                <a href="javascript:;" data-url="/manage/grab/book/chapters" data-id="5">抓取章节列表</a>
                            </dd>
                            <dd>
                                <a href="javascript:;" data-url="tabletree.html" data-id="6">抓取章节内容</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
                <ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
                    <li class="layui-nav-item">
                        <a href="javascript:;">后台用户</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" data-url="https://www.layui.com/doc/" data-id="7">登录日志</a>
                            </dd>
                            <dd>
                                <a href="javascript:;" data-url="https://www.layui.com/doc/" data-id="8">操作日志</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
				<ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
                    <li class="layui-nav-item">
                        <a href="javascript:;">导航管理</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" data-url="https://www.layui.com/doc/" data-id="9">导航列表</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
				<ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
                    <li class="layui-nav-item">
                        <a href="javascript:;">广告管理</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" data-url="https://www.layui.com/doc/" data-id="10">广告列表</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
				<ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
                    <li class="layui-nav-item">
                        <a href="javascript:;">会员管理</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" data-url="https://www.layui.com/doc/" data-id="11">会员列表</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
		
        <!-- 主体 -->
        <div class="layui-body">
            <!-- 顶部切换卡 -->
            <div class="layui-tab layui-tab-card" lay-filter="top-tab" lay-allowClose="true">
                <ul class="layui-tab-title"></ul>
                <div class="layui-tab-button">
                	<a href="javascript:;"><i class="layui-icon">&#x1002;</i></a>
                </div>
                <div class="layui-tab-content"></div>
            </div>
        </div>

        <!-- 底部 -->
        <%--<div class="layui-footer">
             GTF-Admin
        </div>--%>
    </div>

    <%@ include file="/_static/common/footer_resource.jsp" %>

</body>
</html>