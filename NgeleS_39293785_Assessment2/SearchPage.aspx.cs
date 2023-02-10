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
    public partial class SearchPage : System.Web.UI.Page
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

                //Limit what is displayed to only personal information
                sql = @"SELECT Id,Name,Surname,Region,AdmissionDate FROM VictimList";

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
                Display();
                txtName.Focus();
            }
        }

        //Search for victims in the database with similar names typed by user
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Store input into variables
            string name = txtName.Text;
            string surname = txtSurname.Text;

            //Search database for the name and surname and display output
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

                //Limit what is displayed to only personal information
                sql = $"SELECT Id,Name,Surname,Region,AdmissionDate FROM VictimList WHERE Name = '{name}' AND Surname = '{surname}'";

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
            //Reset gridview data
            Display();

            //Reset input and outputs
            txtName.Text = "";
            txtSurname.Text = "";
            lblResults.Text = "";

            //Reset focus
            txtName.Focus();
        }
    }
}