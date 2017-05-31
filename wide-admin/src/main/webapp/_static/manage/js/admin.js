layui.use(["element", "layer", "form"], function () {
    var $ = layui.jquery, element = layui.element(), layer = layui.layer, form = layui.form();
    var l_o = $(".left-menu"), tab = "top-tab", l_m = "left-menu", t_m = "top-menu";
    var mainHeight = $(window).height() - 60 - 41 - 44 - 5;
    element.on("nav(" + t_m + ")", function (data) {
        l_o.hide().eq(data.index()).show()
    });
    l_o.on("click", "li", function () {
        $(this).siblings().removeClass("layui-nav-itemed")
    });
    element.on("nav(" + l_m + ")", function (data) {
        var a_t = data.children("a"), id = a_t.data("id"), url = a_t.data("url"), title = a_t.html(), length = $(".layui-tab-title").children("li[lay-id='" + id + "']").length;
        if (!length) {
            var iframe = '<iframe src="' + url + '" style="height:' + mainHeight + 'px;"></iframe>';
            element.tabAdd(tab, {title: title, content: iframe, id: id})
        }
        element.tabChange(tab, id)
    });
    l_o.children("li:first").children("a:first").click();
    $(".menu-flexible").click(function () {
        $(".left-menu-all").toggle();
        $(".layui-body,.layui-footer").css("left", ($(".left-menu-all").is(":hidden")) ? "0" : "200px")
    });
    $(".layui-tab-button").on("click", "a", function () {
        var iframe = $(".layui-tab-content").find(".layui-show iframe");
        iframe.attr("src", iframe.attr("src"))
    })

    form.on('select(groups)', function(data){
        var url = "/manage/sort";
        $.ajax({
            type:"GET",
            dataType:"JSON",
            url:url,
            data:{group:data.value},
            success:function(d){
                var partnerSort = $("#partnerSort");
                var subSort = $("#subSort");
                partnerSort.html("<option value=''>请选择父分类</option>");
                subSort.html("<option value=''>请选择子分类</option>");
                layui.each(d, function () {
                    partnerSort.append("<option value='" + this.id + "'>" + this.name + "</option>")
                });
                form.render('select');//xxx
            }
        })
    });

    form.on('select(partnerSort)', function(data){
        var url = "/manage/subSort";
        $.get(url, {partnerId:data.value}, function(d){
            var partnerSort = $("#partnerSort");
            var subSort = $("#subSort");
            subSort.removeProp("disabled");
            subSort.html("<option value=''>请选择子分类</option>");
            if (d.length != 0){
                layui.each(d, function () {
                    subSort.append("<option value='" + this.id + "'>" + this.name + "</option>")
                });
            } else {
                subSort.html("<option value=''>子分类为空</option>");
                subSort.prop("disabled", "disabled");
            }
            form.render('select');//xxx
        }, "JSON");
    });

    form.on('submit(grabSort)', function(data) {
        layer.msg("提交成功！");
        console.log(data)
    })
});