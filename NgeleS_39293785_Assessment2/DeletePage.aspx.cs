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
    public partial class DeletePage : System.Web.UI.Page
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

        private void FillDropDown()
        {
            //First reset item list
            ddlVictimID.Items.Clear();

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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Display Data in GridView
                Display();

                //Fill DropDown List
                FillDropDown();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Delect Victim using id select from drop down list
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
                sql = $"DELETE FROM VictimList WHERE id = '{ddlVictimID.SelectedValue}'";

                command = new SqlCommand(sql, conn);
                adapter.DeleteCommand = command;
                adapter.DeleteCommand.ExecuteNonQuery();

                conn.Close();

                //Display full data in gridview
                Display();

                //Resest DropDown List items to new values
                FillDropDown();

                //Before displaying results ensure session is still valid
                if (Session["UserName"] != null)
                {
                    //Display result 
                    lblResults.Text = Session["UserName"] + ", you succesfully deleted victim ID no." + ddlVictimID.SelectedValue + " details";
                }

                else
                {
                    lblResults.Text = "Session expired , deleted details of victim ID no." + ddlVictimID.SelectedValue; ;
                }
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
    }
}