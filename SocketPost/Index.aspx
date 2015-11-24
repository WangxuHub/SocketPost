<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SocketPost.Index" %>

<%@ Register src="UserControl/HeadInclude.ascx" tagname="HeadInclude" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <uc1:HeadInclude ID="HeadInclude1" runat="server" />

    <title></title>
</head>
<body >
<div id="cc" class="easyui-layout" data-options="fit:true" style="width:600px;height:400px;">   
    <div data-options="region:'north'" style="height:100px;"></div>   
    <div data-options="region:'south'" style="height:50px;"></div>      
    <div data-options="region:'west'" style="width:250px;"></div>   
    <div data-options="region:'center'" style="padding:5px;background:#eee;"></div>   
</div>  
   
</body>
</html>
