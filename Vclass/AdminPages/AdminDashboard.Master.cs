using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Vclass
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        string FName;
        string SName;
        string PictureLink;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = Session["userIDs"].ToString();
            scanDetails();
        }

        //public Label lblSAdmins
        //{
        //    get
        //    {
        //        return this.lblAdmin;
        //    }
        //}



        public void scanDetails()
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))

            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Admins where Staff_ID ='" + lblId.Text + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {

                        //StaffID = dr["Staff_ID"].ToString();
                        FName = dr["F_Name"].ToString();
                        SName = dr["S_Name"].ToString();
                        // email = dr["Email"].ToString();
                        PictureLink = dr["Picture_Link"].ToString();
                        

                    }
                }
                lblAdmin.Text = FName + " " + SName;
                Image1.ImageUrl = "~/ProfilePictures/" + PictureLink;



            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("createAccount.aspx");
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("addStudents.aspx");
        }

       protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccessList.aspx");
        }

        protected void btnMange_Click(object sender, ImageClickEventArgs e)
        {
            Session["userIDs"] = lblId.Text;
            Session["User"] = Session["usertype"].ToString();

            Response.Redirect("~/managingForm.aspx");
        }

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/loginForm.aspx");
        }
    }
}