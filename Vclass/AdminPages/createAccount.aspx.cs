using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vclass.classes;

namespace Vclass
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        private string occupation = "TEACHER";
        config db = new config();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int a = db.InsertData("INSERT INTO Teacher(Staff_ID, F_Name, S_Name, Picture_link, Subject, Email) VALUES('"+txtStaffID.Text+"', '"+txtFName.Text+"', '"+txtSName.Text+"', NULL, '"+txtSubject.Text+"', '"+txtEmail.Text+"')");

            if (a > 0)
            {

                int i = db.InsertData("INSERT INTO User_login (Username, Password, User_Type) VALUES('" + txtStaffID.Text + "','" + txtDefaultPass.Text + "', '"+ occupation + "')");
                if (i > 0)
                {
                    Response.Write("<script> alert ('Data Saved Successfully')</script>");
                    clr();
                }

                //INSERT INTO User_login (Username, Password, User_Type) VALUES( Username,  Password, User_Type)


            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            clr();
        }
        protected void clr()
        {
            txtEmail.Text = "";
            txtFName.Text = "";
            txtSName.Text = "";
            txtStaffID.Text = "";
            txtSubject.Text = "";
            txtDefaultPass.Text = "";
        }
    }
}