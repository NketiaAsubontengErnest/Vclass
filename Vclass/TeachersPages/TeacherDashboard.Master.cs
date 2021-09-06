using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Vclass;
using Vclass.classes;



namespace Vclass
{
    public partial class TeacherDashboard1 : System.Web.UI.MasterPage
    {
        //public string name;
        public string StaffID;
        public string FName;
        public string SName;
        public string subject;
        public string email;
        string PictureLink;
        Functionalities fuc = new Functionalities();
        
        

        string ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblStaffID.Text = Session["userIDs"].ToString();
                scanDetails();
            }
            
        }
        //public Label lblStaff
        //{
        //    get
        //    {
        //        return this.lblStaffID;
        //    }
        //}
        
        

        public void scanDetails()
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))

            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Teacher where Staff_ID ='"+lblStaffID.Text+"'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        
                        //StaffID = dr["Staff_ID"].ToString();
                        FName = dr["F_Name"].ToString();
                        SName = dr["S_Name"].ToString();
                        subject = dr["Subject"].ToString();
                        email = dr["Email"].ToString();
                        PictureLink = dr["Picture_Link"].ToString();

                    }
                }
                lblName.Text = FName+ " " + SName;
                lblSubject.Text = subject;
                lblEmail.Text = email;
                Image1.ImageUrl = "~/ProfilePictures/" + PictureLink;



            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["userIDs"] = lblStaffID.Text;
            Session["User"] = Session["usertype"].ToString();
            Response.Redirect("~/managingForm.aspx");
        }

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/loginForm.aspx");
        }
    }
}