using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["firstname"] = TextBox1.Text;
            Session["lastname"] = TextBox2.Text;
            Session["tel"] = TextBox3.Text;
            Session["gender"] = RadioButtonList1.Text;
            Session["address"] = TextBox4.Text;
            Session["country"] = DropDownList1.Text;
            Session["state"] = DropDownList2.Text;
            Session["city"] = TextBox6.Text;
            Session["code"] = TextBox5.Text;
            Session["type"] = CheckBoxList1.Text;
            Response.Redirect("quiz2.aspx");

        }


        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string message = "";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    message += item.Text;
                    message += ", ";
                }
            }
            Response.Write("You have choosed " + message);
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string message = "";
            foreach (ListItem item in RadioButtonList1.Items)
            {
                if (item.Selected)
                {
                    message += item.Text;
                    message += ", ";
                }
            }
            Response.Write(" " + message + " Gender Has Been Selected");
        }
    }
    }
