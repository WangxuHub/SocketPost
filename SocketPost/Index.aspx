<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SocketPost.Index" %>

<%@ Register src="UserControl/HeadInclude.ascx" tagname="HeadInclude" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <uc1:HeadInclude ID="HeadInclude1" runat="server" />
    <script src="/Resource/js/index.js" type="text/javascript"></script>
    <title>设备推送信息管理</title>
<style type="text/css"> 
.leftMenu
{
   list-style: none;
}

.leftMenu li
{
    font-size: 18px;
}
.leftMenu li:hover
{
    cursor:pointer;
}
</style>

<script type="text/javascript">
  
</script>
</head>
<body >
<div id="cc" class="easyui-layout" data-options="fit:true" style="width:600px;height:400px;">   
    <div data-options="region:'north'" style="height:100px;"></div>   
    <div data-options="region:'south'" style="height:20px;"></div>      
    <div data-options="region:'west'" style="width:250px;">
        <div style="height:35px;background:#999;"></div>
        <ul class="leftMenu" id="leftMenu">
            <li menuUrl="/SocketPost/GoOnLine.aspx">信息接口</li>
            <li menuUrl="/SocketPost/SocketPostList.aspx">设备在线列表</li>
            <li menuUrl="/SocketPost/DeviceList.aspx">设备在线列表(ajax)</li>
            <li menuUrl="/SocketPost/ManageList.aspx">管理在线列表(ajax)</li>
            <li menuUrl="/SocketPost/AllSocketList.aspx">所有在线列表(ajax)</li>
            <li>菜单3</li>
            <li>菜单4</li>
        </ul>
    </div>   
    <div data-options="region:'center'" style="background:#eee;">

        <div id="contentTabs" class="easyui-tabs" style="width: 500px; height: 250px;" 
           fit="true" plain="true" border="false" tabHeight="34">
            <div title="Tab1" style="padding: 20px; ">
                tab1
            </div>
        </div>
    </div>   
</div>  
   
</body>
</html>
