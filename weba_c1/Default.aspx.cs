using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace weba_c1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FormView1.DataSource = SqlDataSource1;
                //SqlDataSource1.DataBind();
                FormView1.DataBind();
                FormView1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.DataView dv = (System.Data.DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            TextBox2.Text = dv.Table.Rows[0]["Description"].ToString();
        }
    }
}