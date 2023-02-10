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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Count number of registered users and their needs in database

            //Intialize the counter variable;
            int count = 0;
            int clothing = 0;
            int food = 0;
            int housing = 0;

            //Read data in database
            SqlConnection conn = new SqlConnection();
            SqlDataReader dr;

            string constr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Victim.mdf; Integrated Security = True";
            SqlCommand command;
            string sql;
            conn = new SqlConnection(constr);

            try
            {
                conn.Open();
                sql = @"SELECT Clothing,Food,Housing FROM VictimList";

                command = new SqlCommand(sql, conn);
                dr = command.ExecuteReader();

                while (dr.Read())
                {
                    //Add number of victims
                    count++;

                    //Store boolean values read into these variable
                    bool bClothing = (bool)dr.GetValue(0);
                    bool bFood = (bool)dr.GetValue(1);
                    bool bHousing = (bool)dr.GetValue(2);


                    //if Clothing is selcted add needed clothing value
                    if (bClothing)
                    {
                        clothing++;
                    }

                    //if Food is selcted add needed food value
                    if (bFood)
                    {
                        food++;
                    }

                    //if Housing is selcted add needed housing value
                    if (bHousing)
                    {
                        housing++;
                    }
                }

                conn.Close();

                //Display total number of needs and victims
                lblResVictim.Text = count.ToString();
                lblResClothing.Text = clothing.ToString();
                lblResHousing.Text = housing.ToString();
                lblResFood.Text = food.ToString();
            }

            catch (Exception ex)
            {
         
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }
    }
}