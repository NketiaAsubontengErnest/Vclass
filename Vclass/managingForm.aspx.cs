using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace Vclass
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        string usertype;
        string FName;
        string SName;
        string PictureLink;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblID.Text = Session["userIDs"].ToString();
            usertype = Session["User"].ToString();
            loaddetails();


        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            //this is where we make the changes
            if (txtNewPass.Text.Equals(txtConfNewPass.Text))
            {
                using (SqlConnection conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd1 = new SqlCommand("select * from User_login where Username = '" + lblID.Text + "' and Password = '" + txtOldPass.Text + "'  ", conn);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.HasRows == true)
                    {
                        conn.Close();
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("update User_login set Password='" + txtConfNewPass.Text + "' where Username='" + lblID.Text + "' ", conn);
                        int x = cmd.ExecuteNonQuery();
                        if (x > 0)
                        {
                            Response.Write("<script> alert ('Password changed')</script>");
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script> alert ('Password Missmatch!!')</script>");
            }
            
            
        }

        void loaddetails()
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))

            {
                conn.Open();
                SqlDataReader dr = null;
                if (usertype.Equals("ADMIN"))
                {
                    SqlCommand cmd = new SqlCommand("select * from Admins where Staff_ID ='" + lblID.Text + "'", conn);
                    dr = cmd.ExecuteReader();
                }
                else if (usertype.Equals("STUDENT"))
                {
                    SqlCommand cmd = new SqlCommand("select * from Student where Index_No ='" + lblID.Text + "'", conn);
                    dr = cmd.ExecuteReader();
                }
                else if (usertype.Equals("TEACHER"))
                {
                    SqlCommand cmd = new SqlCommand("select * from Teacher where Staff_ID ='" + lblID.Text + "'", conn);
                    dr = cmd.ExecuteReader();
                }
                
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {

                        //StaffID = dr["Staff_ID"].ToString();
                        FName = dr["F_Name"].ToString();
                        SName = dr["S_Name"].ToString();
                        PictureLink = dr["Picture_Link"].ToString();
                    }
                }
                imgProfile.ImageUrl = "~/ProfilePictures/" + PictureLink;
                lblFirstName.Text = FName;
                lblSecondName.Text = SName;

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            if (FileUpload1.HasFile)
            {
                string extens = Path.GetExtension(FileUpload1.FileName);
                if (extens.ToLower() != ".jpg" && extens.ToLower() != ".png")
                {
                    // write response 
                }
                else
                {

                    string folderPath = Server.MapPath("~/ProfilePictures/");

                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                   
                    FileUpload1.SaveAs(folderPath + Path.GetFileName(lblID.Text +extens));

                    setProfilePicture(lblID.Text + extens);
                    loaddetails();

                }
            }
        }

        void setProfilePicture(string linlin)
        {
            string ConneString = null;
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                conn.Close();
                conn.Open();
                if (usertype.Equals("ADMIN"))
                {
                    ConneString = "update Admins set Picture_Link='" + linlin + "'  where Staff_ID ='" + lblID.Text + "'";
                }
                else if (usertype.Equals("STUDENT"))
                {
                    ConneString = "update Student set Picture_Link='" + linlin + "'  where Index_No ='" + lblID.Text + "'";
                }
                else if (usertype.Equals("TEACHER"))
                {
                    ConneString = "update Teacher set Picture_Link='" + linlin + "'  where Staff_ID ='" + lblID.Text + "'";
                }

                conn.Close();
                conn.Open();
                SqlCommand cmd = new SqlCommand(ConneString, conn);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Write("<script> alert ('Password changed')</script>");
                }
            }
        }
    }
}