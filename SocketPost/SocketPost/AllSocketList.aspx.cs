using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SocketPost.Common;
namespace SocketPost.SocketPost
{
    public partial class AllSocketList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        mJsonResult json = new mJsonResult();
        protected override void OnInit(EventArgs e)
        {
            string PostType = Request["PostType"];
            if (string.IsNullOrEmpty(PostType))
            {
                base.OnInit(e);
                return;
            }

            switch(PostType)
            {
                case "getAllSocketList":
                    GetAllSocketList();//获取设备列表页面
                    break;
            }

            if (json != null)
            {
                Response.Write(json.ToJson());
                Response.End();
            }
        }


        #region 获取设备列表页面
        private void GetAllSocketList()
        {
            var manageList = (from item in TcpServer.WebSocketHelper.clientPool
                              select new { id = item.Value.Name, handle = item.Value.handle.ToString() }).ToList();

            Response.Write(manageList.ToJson());
            Response.End();
            json = null;
        }
        #endregion
    }
}