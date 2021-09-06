using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vclass.classes;

namespace Vclass
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        config db = new config();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            if(RadOption1.Checked == true)
            {
                instect(txtOption1.Text);
            }
            else if(RadOption2.Checked == true)
            {
                instect(txtOption2.Text);
            }
            else if (RadOption3.Checked == true)
            {
                instect(txtOption3.Text);
            }
            else if (RadOption4.Checked == true)
            {
                instect(txtOption4.Text);
            }
            else
            {
                Response.Write("<script> alert ('there was a problem')</script>");
            }
            
        }

        protected void instect(string ans)
        {
            string Questuion = Request.Params["txtQuestions"];
            int a = db.InsertData("INSERT INTO Quiz (Question, Option1, Option2, Option3,Option4,Answer) VALUES( '"+ txtQuestion.Text + "', '"+txtOption1.Text+"', '"+txtOption2.Text+"', '"+txtOption3.Text+"', '"+txtOption4.Text+"' , '"+ans+"')");
            
            if (a > 0)
            {
                
                Response.Write("<script> alert ('Question Saved Successfully')</script>");
                cls();
            }
        }

        protected void cls()
        {
            txtOption1.Text = "";
            txtOption2.Text = "";
            txtOption3.Text = "";
            txtOption4.Text = "";
        }
    }
}
