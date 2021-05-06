using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class BookTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BuildBookTable();
            }
        }

        public void BuildBookTable()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            cmd.CommandText = "SELECT Title, LastName, FirstName, Price, PublishDate, PublisherName, GenreName FROM Books " +
                "INNER JOIN Authors On Books.AuthorID = Authors.AuthorID " +
                "INNER JOIN Publishers On Books.PublisherID = Publishers.PublisherID " +
                "INNER JOIN Genres On Books.GenreID = Genres.GenreID";

            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    tc.Text = reader["Title"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["LastName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["FirstName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["Price"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["PublishDate"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["PublisherName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["GenreName"].ToString();
                    tr.Cells.Add(tc);

                    tblBookList.Rows.Add(tr);
                }
            }
        }
    }
}