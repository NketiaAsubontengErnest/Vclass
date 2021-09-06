using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vclass.classes;
using System.Data;
using System.Data.SqlClient;



namespace Vclass
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        
        string ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))

            {
                
                string UserType = null;
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from User_login where Username = '"+txtUsername.Text+ "' and Password = '"+txtPassword.Text+"'  ", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                   while (dr.Read())
                   {
                       UserType = dr["User_Type"].ToString();
                    }
                }
                // Passing sessions to the next forms
                Session["userIDs"] = txtUsername.Text;
                Session["usertype"] = UserType;
                if (UserType == "TEACHER")
                { 
                   Response.Redirect("./TeachersPages/teacherFirstView.aspx");
                }
                else if (UserType == "STUDENT")
                {
                    Response.Redirect("./StudentsPages/studentContentShow.aspx");   
                }
                else if (UserType == "ADMIN")
                {
                    Response.Redirect("./AdminPages/adminWelcomePage.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('Invalid login please!!')</script>");
                }
                

            }
         
        }
    }
}