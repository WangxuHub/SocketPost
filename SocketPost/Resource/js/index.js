$(function () {
   BindLeftMenuClick();
});

//绑定左侧菜单 点击事件
function BindLeftMenuClick() {
    $("#leftMenu li").click(function () {

        var url = $(this).attr("menuUrl");
        var tabTitle = $(this).text();

        if ($('#contentTabs').tabs('getTab', tabTitle)) {
            $('#contentTabs').tabs('select', tabTitle)
            return;
        }


        $('#contentTabs').tabs('add', {
            title: tabTitle,
            content: "<iframe src='" + url + "'  style='width: 100%;height: 100%;border: none;'></iframe>",
            closable: true
        });
    });
}