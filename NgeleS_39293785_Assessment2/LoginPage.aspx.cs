using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NgeleS_39293785_Assessment2
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Save field worker info in a Session 
            Session["UserName"] = txtName.Text;
            Session["UserID"] = txtID.Text;

            //Send user to the AddPage
            Response.Redirect("AddPage.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //Save field worker info in a Session 
            Session["UserName"] = txtName.Text;
            Session["UserID"] = txtID.Text;

            //Send user to the UpdatePage
            Response.Redirect("UpdatePage.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Save field worker info in a Session 
            Session["UserName"] = txtName.Text;
            Session["UserID"] = txtID.Text;

            //Send user to the AddPage
            Response.Redirect("DeletePage.aspx");
        }
    }
}