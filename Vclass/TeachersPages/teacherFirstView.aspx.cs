using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vclass.classes;
using System.IO;

namespace Vclass
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        config db = new config();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // Page lastPage = (Page)Context.Handler;
               // //this is casting the username from the login page
               // ((TeacherDashboard1)Master).lblStaff.Text = ((TextBox)lastPage.FindControl("txtUsername")).Text;
            }
            
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            int a = db.InsertData("INSERT INTO Content (Title, Content)VALUES('" + txtTitle.Text + "', '" + txtContent.Text + "')");

            if (a > 0)
            {
                Response.Write("<script> alert ('Content Saved uploaded')</script>");

            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }

        protected void btnQuiz_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacherAddQuiz.aspx");
        }

        protected void btnUploaded_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyUploaded.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtContent.Text = "";
            txtTitle.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            cmbActivity.Text = "";
        }

       

        protected void btnSave_Click(object sender, EventArgs e)
        {
            uploadFiles();
        }

        protected void uploadFiles()
        {
            try
            {
                string folderPath = Server.MapPath("~/Teacher_Uploades/");
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string fileLink = folderPath + Path.GetFileName(FileUpload1.FileName);
                //Label6.Text = fileLink;

                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                else
                {
                    //int a = db.InsertData("INSERT INTO Teachers_Updload(file_name, file_Type, file_link) VALUES('" + fileName.ToString() + "', '" + (cmbActivity.Text).ToString()+ "', '" + fileLink.ToString() + "')");
                    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                    //if (a > 0)
                    //{
                        
                        Response.Write("<script> alert ('file Saved Successfully')</script>");

                    //}
                }
            }
            catch (Exception)
            {

                throw;
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_uploaded.aspx");
        }

        protected void btnSeeResults_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuizResults.aspx");
        }
    }
}