using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddAuthor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            //INSERT INTO Authors VALUES(LastName,FirstName, Gender, Birthdate)
            cmd.CommandText = "INSERT INTO Authors VALUES ('" + txtLastName.Text + "', '" + txtFirstName.Text + "', '" + ddlGender.SelectedValue + "', '" + txtBirthDate.Text + "')";
            conn.Open();

            cmd.ExecuteNonQuery();
            conn.Close();


        }
    }
}