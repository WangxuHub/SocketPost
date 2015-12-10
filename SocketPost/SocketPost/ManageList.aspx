<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageList.aspx.cs" Inherits="SocketPost.SocketPost.ManageList" %>

<%@ Register src="../UserControl/HeadInclude.ascx" tagname="HeadInclude" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>在线情况统计表</title>
    
    <uc1:HeadInclude ID="HeadInclude1" runat="server" />
</head>
<body>
<table  class="easyui-datagrid" rownumbers="true" pagination="true" pageSize="100" pageList="[10,20,30,40,50,100]"
          fit="true" toolbar="#tab-tools" border="false" id="tableDeviceList"
          url="?PostType=getManageList">   
    <thead>   
        <tr>   
            <th data-options="field:'userName',width:200" >用户名称</th>   
            <th data-options="field:'onLineTime',width:200">上线时间</th>   
            <th data-options="field:'ip',width:200">socket地址</th>   
            <th data-options="field:'handle',width:200">handle</th>   
        </tr>   
    </thead>   
</table>  

<div id="tab-tools">
</div>


<script type="text/javascript">
 
</script>
</body>
</html>
