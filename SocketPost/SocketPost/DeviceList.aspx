<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeviceList.aspx.cs" Inherits="SocketPost.SocketPost.DeviceList" %>

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
          url="?PostType=getDeviceList">   
    <thead>   
        <tr>   
            <th data-options="field:'deviceSN',width:400" >deviceSN</th>   
            <th data-options="field:'onLineTime',width:400">上线时间</th>   
        </tr>   
    </thead>   
</table>  

<div id="tab-tools">
</div>


<script type="text/javascript">
 
</script>
</body>
</html>
