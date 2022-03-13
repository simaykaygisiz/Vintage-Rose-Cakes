using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Delivery : System.Web.UI.Page
{

    string userID;
    string userName;
    protected void Page_Load(object sender, EventArgs e)
    {
        userID = Request.QueryString["userID"].ToString();
        userName = Request.QueryString["userName"].ToString();
        Label1.Text = userName;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Vintage.aspx?userID=" + userID );       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {       
        Response.Redirect("Bohemian.aspx?userID=" + userID);       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Rustic.aspx?userID=" + userID);       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {        
        Response.Redirect("Beach.aspx?userID=" + userID);      
    }
    protected void Button5_Click(object sender, EventArgs e)
    {       
        Response.Redirect("Autumn.aspx?userID=" + userID);       
    }
    protected void Button6_Click(object sender, EventArgs e)
    {        
        Response.Redirect("Winter.aspx?userID=" + userID);
    }


}