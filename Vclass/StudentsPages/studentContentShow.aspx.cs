using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Vclass
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadContents();
                loadFileContents();
                loadFiles();
            }
             
        }

        public void loadContents()
        {
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from Content";
            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sdr = new SqlDataAdapter(sqlcom);
            DataTable dt = new DataTable();
            sdr.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            sqlconn.Close();

        }
        public void loadFileContents()
        {
           
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from Teachers_Updload";
            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sdr = new SqlDataAdapter(sqlcom);
            DataTable dt = new DataTable();
            sdr.Fill(dt);
 
            sqlconn.Close();

        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
       
        void loadFiles()
        {

            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Teacher_Uploades/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();
           

        }

      
    }
}