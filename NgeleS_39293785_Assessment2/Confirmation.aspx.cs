using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NgeleS_39293785_Assessment2
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Display fieldworker data using sessions
            if(Session["UserName"]!= null && Session["UserID"] != null)
            {
                lblName.Text = Session["UserName"] + " (" + Session["UserID"] + " ) have successfully added :";
            }

            //Display if session is empty
            else
            {
                lblName.Text = "Session has expired or doesn't exist";
            }
            
            //Request Cookie with victim data
            HttpCookie victimData = Request.Cookies["victimInfo"];

            if (victimData["Name"] != null && victimData["Surname"] != null && victimData["ID"] != null && victimData["Region"] != null && victimData["Needs"] != null && victimData["Date"] != null)
            {
                //Add display victim data in given labels
                lblVictimInfo.Text = victimData["Name"] + " " + victimData["Surname"] + " with ID no. " + victimData["ID"] + " from the " + victimData["Region"] + " region";
                lblResult.Text = victimData["Needs"] + ", as from " + victimData["Date"];
            }

            //Display if cookie contains no data
            else
            {
                lblVictimInfo.Text = "Cookie doesn't exist";
            }

        }
    }
}