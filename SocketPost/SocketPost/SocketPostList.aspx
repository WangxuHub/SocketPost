<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SocketPostList.aspx.cs" Inherits="SocketPost.SocketPost.SocketPostList" %>

<%@ Register src="../UserControl/HeadInclude.ascx" tagname="HeadInclude" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>在线情况统计表</title>
    
    <uc1:HeadInclude ID="HeadInclude1" runat="server" />
</head>
<body>
<table  class="easyui-datagrid" rownumbers="true" pagination="true" pageSize="100" pageList="[10,20,30,40,50,100]"
          fit="true" toolbar="#tab-tools" border="false" id="tableDeviceList">   
    <thead>   
        <tr>   
            <th data-options="field:'deviceSN',width:400" >设备SN</th>   
            <th data-options="field:'onLineTime',width:400">上线时间</th>   
        </tr>   
    </thead>   
</table>  

<div id="tab-tools">
	<a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-reload" onclick="getOnlineDeviceList();">刷新列表</a>
	<a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-redo" onclick="connect();">重新上线</a>
    <span style="float:right;line-height: 28px;" id="toolMsg"></span>
</div>


<script type="text/javascript">
$(function () {
    connect();

});

function connect() {
    if (window.ws) {
        window.ws.close();
        window.ws = null;
    }
    window.ws = new WebSocket("<%=SocketPost.SocketServer.WebSocketInfo.WebSocketAdress %>");
   
    window.ws.onopen = function (e) {
        var requestData = new Object();

        //控制页面上线请求
        requestData.SocketPostType = "manageGoOnLine";
        requestData.userName = "csy"+Math.random();
        ws.send(JSON.stringify(requestData));
    };

    //接收推送 回调
    window.ws.onmessage = function (e) {
        var json = JSON.parse(e.data);
        switch (json.clientPostType) {
            case "retManageGoOnLine":
                retManageGoOnLine(json);
                break;
            case "retGetOnlineDeviceList":
                retGetOnlineDeviceList(json);
        }
    };


    window.ws.onclose = function (e) {
        $("#toolMsg").html("已断开，断开时间：" + new Date().Format("yyyy-MM-dd hh:mm:ss"));
        if (window.ws) {
            window.ws.close();
            window.ws = null;
        }
    };
}

function quit() {
    if (window.ws) {
        window.ws.close();
	    window.ws = null;
	}
}

//获取在线设备列表
function getOnlineDeviceList() {
    var requestData = new Object();
    requestData.SocketPostType = "getOnlineDeviceList";
    window.ws.send(JSON.stringify(requestData));
}


//上线消息推送
function retManageGoOnLine(json) {
    $("#toolMsg").html(json.msg);
}

//在线设备列表推送
function retGetOnlineDeviceList(json) {
    $("#tableDeviceList").datagrid({data:json.rows});
}

window.onbeforeunload = function () {
    if (window.ws) {
        window.ws.close();
        window.ws = null;
    }
};

</script>
</body>
</html>
