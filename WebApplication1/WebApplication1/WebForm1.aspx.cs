using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int clickscount = 0;

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(ViewState["click"] != null)
            {
                clickscount = (int)ViewState["click"] + 1;
            }
            TextBox1.Text = clickscount.ToString();
            ViewState["click"] = clickscount;

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write("Hello " + TextBox1.Text);
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("Male Gender Has Been Selected");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("Female Gender Has Been Selected");
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("Unknown Gender Has Been Selected");
        }
    }
}