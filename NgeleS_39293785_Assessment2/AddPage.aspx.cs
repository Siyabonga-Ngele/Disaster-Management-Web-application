using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Data.SqlClient;

namespace NgeleS_39293785_Assessment2
{
    public partial class AddPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtName.Focus();
                Calendar1.SelectedDate = DateTime.Today;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Assign all control input into variables 
            string name = txtName.Text;
            string surname = txtSurname.Text;
            string id = txtID.Text;
            bool clothing = cbClothing.Checked;
            bool food = cbFood.Checked;
            bool housing = cbHousing.Checked;
            string region = ddlRegion.SelectedValue;

            //Store selected date of victim admission into the system in dd/mm/yyyy format
            string admission = Calendar1.SelectedDate.ToString("dd/MM/yyyy");

            //Create a cookie to store some of the input to display in next page
            HttpCookie victimInfo = new HttpCookie("victimInfo");

            victimInfo["Name"] = name;
            victimInfo["Surname"] = surname;
            victimInfo["ID"] = id;
            victimInfo["Region"] = region;
            victimInfo["Date"] = admission;

            //If statements to assign the requirements of the victim into a string value
            string needs = "";

            if (clothing)
            {
                needs += "clothing ";
            }

            if (food)
            {
                needs += "food ";
            }

            if (housing)
            {
                needs += "housing ";
            }

            if(!clothing && !food && !housing)
            {
                needs = "No needs";
            }

            victimInfo["Needs"] = needs;

            //Add input into database 
            string conString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Victim.mdf; Integrated Security = True";
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand cmd;
            SqlDataAdapter dataAdapter;

            try
            {
                conn.Open();
                
                string sql = $"INSERT INTO VictimList VALUES('{id}','{name}','{surname}','{region}','{clothing}','{food}','{housing}','{admission}')";
                cmd = new SqlCommand(sql, conn);

                dataAdapter = new SqlDataAdapter();
                dataAdapter.InsertCommand = cmd;
                dataAdapter.InsertCommand.ExecuteNonQuery();

                conn.Close();

                //Add information into cookie
                Response.Cookies.Add(victimInfo);

                //Send user to confirmation page
                Response.Redirect("Confirmation.aspx");
            }

            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Reset all inputs to default values
            txtName.Text = "";
            txtSurname.Text = "";
            txtID.Text = "";
            ddlRegion.SelectedIndex = 0;
            cbClothing.Checked = false;
            cbFood.Checked = false;
            cbHousing.Checked = false;
            Calendar1.SelectedDate = DateTime.Today;

            //Return focus to Name
            txtName.Focus();
        }
    }
}