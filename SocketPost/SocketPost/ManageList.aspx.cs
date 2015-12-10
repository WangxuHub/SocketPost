using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SocketPost.Common;
namespace SocketPost.SocketPost
{
    public partial class ManageList : System.Web.UI.Page
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
                case "getManageList":
                    GetManageList();//获取管理页面
                    break;
            }

            if (json != null)
            {
                Response.Write(json.ToJson());
                Response.End();
            }
        }


        #region 获取管理页面
        private void GetManageList()
        {
            var manageList = (from item in SocketServer.WebSocket.manageInfoPool
                              select new {
                                  onLineTime = item.Value.onLineTime,
                                  userName=item.Value.userName,
                                  handle=item.Key.Handle.ToString(),
                                  ip=item.Key.RemoteEndPoint.ToString()
                              }
                            ).ToList();

            Response.Write(manageList.ToJson());
            Response.End();
            json = null;
        }
        #endregion
    }
}