using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace weba_c1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                SqlDataSource1.SelectCommand = "select * from [dbo].[adjrpt_detail] where id = '" + TextBox1.Text + "'";
                SqlDataSource1.DataBind();
                UpdatePanel1.Update();
            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "select * from [dbo].[adjrpt_detail] where id = '" + TextBox1.Text + "'";
            SqlDataSource1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}