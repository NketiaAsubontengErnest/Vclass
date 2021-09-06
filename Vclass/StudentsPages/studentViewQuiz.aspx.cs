using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Vclass.classes;

namespace Vclass
{
    public partial class WebForm6 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
       

        protected void btnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnswerQuiz.aspx");
        }
    }
}