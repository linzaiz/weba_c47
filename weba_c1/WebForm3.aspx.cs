using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace weba_c1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String id;
                if (Request.QueryString["id"] == null)
                {
                    return;
                }
                else
                {
                    id = Request.QueryString["id"];
                    SqlDSSub.SelectCommand = "select * from [dbo].[adjrpt_sub] where id = '" + id + "'";
                    SqlDSSub.DataBind();
                    //UpdatePanel1.Update();

                }



            }

        }
    }
}