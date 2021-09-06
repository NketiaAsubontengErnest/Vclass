using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vclass.classes;
using System.Data;
using System.Configuration;


namespace Vclass
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        config db = new config();
        public string occupation = "STUDENT";

        protected void Page_Load(object sender, EventArgs e)
        {
            loadTeachers();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int a = db.InsertData("INSERT INTO Student(Index_No, F_Name, S_Name, Picture_Link, Teacher_Name)VALUES('"+txtIndex.Text+"', '"+txtFullName.Text+"', '"+txtSname.Text+"', NULL, '"+cmbTeacher.Text+"')");
           
            if (a > 0)
            {
                int i = db.InsertData("INSERT INTO User_login(Username, Password, User_Type)VALUES('" +txtIndex.Text+"','"+txtDefaultPass.Text+"', 'STUDENT')");
                if(i > 0)
                    Response.Write("<script> alert ('Data Saved Successfully')</script>");
                
            }
        }

        void loadTeachers()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using(SqlConnection conn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from Teacher", conn);
                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        string fname = dr["F_Name"].ToString();
                        string sname = dr["S_Name"].ToString();
                        cmbTeacher.Items.Add(sname+" "+fname);
                    }
                }
            }
        }
    }
}