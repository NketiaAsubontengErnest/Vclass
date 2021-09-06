using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vclass.AdminPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected string cs = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            loadStudentsData();
        }
        protected void loadStudentsData()
        {
            DataTable dtbl = new DataTable();
            //string cs = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                conn.Open();
                SqlDataAdapter sqlda = new SqlDataAdapter("select * from Student  ", conn);
                sqlda.Fill(dtbl);
                if (dtbl.Rows.Count > 0)
                {

                    StudentGridView.DataSource = dtbl;
                    StudentGridView.DataBind();
                }
                else
                {
                    dtbl.Rows.Add(dtbl.NewRow());
                    StudentGridView.DataSource = dtbl;
                    StudentGridView.DataBind();
                    StudentGridView.Rows[0].Cells.Clear();
                    StudentGridView.Rows[0].Cells.Add(new TableCell());
                    StudentGridView.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                    StudentGridView.Rows[0].Cells[0].Text = "No data found !!!";
                    StudentGridView.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }
            }

        }

        protected void StudentGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM Student where ID=@ID", conn);
                    cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(StudentGridView.DataKeys[e.RowIndex].Value.ToString()));
                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        Response.Write("<script> alert ('record row deleted')</script>");
                        loadStudentsData();

                    }
                }
                catch (Exception)
                {
                    Response.Write("<script> alert ('there was a problem')</script>");

                }

            }
        }

        protected void StudentGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            StudentGridView.EditIndex = e.NewEditIndex;
            loadStudentsData();

        }

        protected void StudentGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            StudentGridView.EditIndex = -1;
            loadStudentsData();
        }

        protected void StudentGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Id = Convert.ToInt32(StudentGridView.DataKeys[e.RowIndex].Value.ToString());
            string index = ((TextBox)StudentGridView.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string F_name = ((TextBox)StudentGridView.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string S_name = ((TextBox)StudentGridView.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string teach = ((TextBox)StudentGridView.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            

            using (SqlConnection conn = new SqlConnection(cs))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("update Student set Index_No='" + index + "', F_Name='" + F_name + "', S_Name='" + S_name + "', Teacher_Name='" + teach + "' where SID='" + Id + "' ", conn);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Write("<script> alert ('records updated')</script>");
                    StudentGridView.EditIndex = -1;
                    loadStudentsData();

                }

            }
        }
    }
}