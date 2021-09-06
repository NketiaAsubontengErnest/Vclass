using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Vclass
{
    public partial class StudentDashboard : System.Web.UI.MasterPage
    {
        string fname;
        string sname;
        string teacher;
        string User;
        string PictureLink;

        string ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStudntID.Text = Session["userIDs"].ToString();
            
            scanDetails();
        }
        public Label lblStudent
        {
            get
            {
                return this.lblStudntID;
            }
        }

        public void scanDetails()
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))

            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Student where Index_No ='" + lblStudntID.Text + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        fname = dr["F_Name"].ToString();
                        sname = dr["S_Name"].ToString();
                        teacher = dr["Teacher_Name"].ToString();
                        PictureLink = dr["Picture_Link"].ToString();
                        
                    }
                }
                lblName.Text = fname + " " + sname;
                lblTeacher.Text = teacher;
                //lblEmail.Text = email;
                ImageButton1.ImageUrl = "~/ProfilePictures/" + PictureLink;



            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["userIDs"] = lblStudntID.Text;
            Session["User"] = Session["usertype"].ToString();
            Response.Redirect("~/managingForm.aspx");
        }

        protected void btnViewQuiz_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentViewQuiz.aspx");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentUpload.aspx");
        }

        protected void btnContents_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentContentShow.aspx");  
        }

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/loginForm.aspx");
        }
    }
}