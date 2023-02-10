using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NgeleS_39293785_Assessment2
{
    public partial class UpdatePage : System.Web.UI.Page
    {
        //Method to Display Data into GridView
        private void Display()
        {
            SqlConnection conn = new SqlConnection();
            SqlDataAdapter adapter = new SqlDataAdapter(); 
            DataSet ds = new DataSet();

            string constr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Victim.mdf; Integrated Security = True";
            
            SqlCommand command;
            string sql;
            conn = new SqlConnection(constr);
            
            try
            {
                conn.Open();
                sql = @"SELECT * FROM VictimList";

                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;

                adapter.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();

                conn.Close();
            }

            catch (Exception ex)
            {
                lblResults.Text = ex.Message;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Display Data in GridView
                Display();

                //Enter all id numbers into drop down list
                SqlConnection conn = new SqlConnection();
                SqlDataReader dr;

                string constr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Victim.mdf; Integrated Security = True";

                SqlCommand command;
                string sql;
                conn = new SqlConnection(constr);

                try
                {
                    conn.Open();
                    sql = @"SELECT id FROM VictimList";

                    command = new SqlCommand(sql, conn);
                    dr = command.ExecuteReader();

                    while (dr.Read())
                    {
                        ddlVictimID.Items.Add(dr.GetValue(0).ToString());
                    }

                    conn.Close();
                }

                catch (Exception ex)
                {
                    lblResults.Text = ex.Message;
                }
            }
        }


        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Declare and intialize id into a string variable
            string id = ddlVictimID.SelectedValue;

            //Declare boolean variables to true then unselect if radio button yes (to uncheck in database as needs have been fullfilled)
            bool clothing = true;
            bool food = true;
            bool housing = true;

            //Check radio input for clothing
            if (rdCYes.Checked)
            {
                clothing = false;
            }

            //Check radio input for food
            if (rdFYes.Checked)
            {
                food = false;
            }

            //Check radio input for housing
            if (rdHYes.Checked)
            {
                housing = false;
            }

            //Update values in database
            SqlConnection conn = new SqlConnection();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();

            string constr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Victim.mdf; Integrated Security = True";

            SqlCommand command;
            string sql;
            conn = new SqlConnection(constr);

            try
            {
                conn.Open();
                sql = $"UPDATE VictimList set Clothing = '{clothing}', Food = '{food}', Housing = '{housing}' WHERE Id = '{id}'";

                command = new SqlCommand(sql, conn);
                adapter.UpdateCommand = command;

                adapter.UpdateCommand.ExecuteNonQuery();

                conn.Close();

                //Before displaying results ensure session is still valid
                if(Session["UserName"]!= null)
                {
                    //Display result 
                    lblResults.Text = Session["UserName"] + ", you succesfully update victim ID no." + id + " details";
                }

                else
                {
                    lblResults.Text = "Session expired";
                }

                //Reset gridview to show all victims
                Display();
            }

            catch (Exception ex)
            {
                lblResults.Text = ex.Message;
            }


        }

        protected void ddlVictimID_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Display information of victim selected id number
            SqlConnection conn = new SqlConnection();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();

            string constr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Victim.mdf; Integrated Security = True";

            SqlCommand command;
            string sql;
            conn = new SqlConnection(constr);

            try
            {
                conn.Open();
                sql = $"SELECT * FROM VictimList WHERE id LIKE '{ddlVictimID.SelectedValue}'";

                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;

                adapter.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();

                conn.Close();
            }

            catch (Exception ex)
            {
                lblResults.Text = ex.Message;
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //Reset all input 
            ddlVictimID.SelectedIndex = 0;
            rdCNo.Checked = true;
            rdFNo.Checked = true;
            rdHNo.Checked = true;

            //Reset all output
            lblResults.Text = "";

            //Display all data in database in gridview
            Display();
        }
    }
}