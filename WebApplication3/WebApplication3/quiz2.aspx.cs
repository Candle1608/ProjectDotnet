using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication3
{
    public partial class quiz2 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string firstname = Session["firstname"].ToString();
                string lastname = Session["lastname"].ToString();
                string tel = Session["tel"].ToString();
                string gender = Session["gender"].ToString();
                string address = Session["address"].ToString();
                string country = Session["country"].ToString();
                string state = Session["state"].ToString();
                string city = Session["city"].ToString();
                string code = Session["code"].ToString();
                string type = Session["type"].ToString();
                Label1.Text = "Welcome to Treasure Bookstore, " + firstname + " " + lastname;
                Label2.Text = "Your telephone number is  " + tel;
                Label3.Text = "Your gender is  " + gender;
                Label4.Text = "Your address is " + address + "  " + code + "  " + city + "  " + state + "  " + country;
                Label5.Text = "Your type of favourite book is  " + type;
            }
            catch
            {
                Response.Write("There was an error");
            }

        }
    }
}