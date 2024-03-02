using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GSAFIRSTAPP
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("data source=DESKTOP-Q9TU88R\\SQLEXPRESS;initial catalog=GSA;user id=sa1;password=Icegen@123;encrypt=False;MultipleActiveResultSets=True;");

            //SqlConnection con = new SqlConnection("data source=DESKTOP-Q9TU88R\\SQLEXPRESS;initial catalog=GSA;user id=sa1;encrypt=False;MultipleActiveResultSets=True;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("Select * from login where username = '"+Logname.Text.Trim()+"' and password = '"+LogPassword.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["password"] = dr.GetValue(1).ToString();
                        Response.Write("<script>alert('Successful login');</script>");

                    }
                    Response.Redirect("About.aspx");

                }
                else
                {
                    Response.Write("<script>alert('invalid credentials');</script>");

                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Something went wrong');</script>");

            }
        }
    }
}