using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class Beach : System.Web.UI.Page
{
    Connection con = new Connection();
    string userID;
    protected void Page_Load(object sender, EventArgs e)
    {
        userID = Request.QueryString["userID"].ToString();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string query4 = "insert into cake(numOfPeople,flavor,address,date,time,payment,userID) values ('" + People1.Text + "','" + Flavor1.Text + "','" + Address1.Text + "','" + Date1.Text + "','" + Time1.Text + "','" + Payment1.Text + "','" + userID + "')";
        MySqlCommand command4 = new MySqlCommand(query4, con.connection());
        int result = command4.ExecuteNonQuery();

        if (result > 0)
        {
            Response.Write("<script>alert('Your order has been received. ');</script>");
        }
        else
        {
            Response.Write("<script>alert('Please try again');</script>");

        }

        con.connection().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string query4 = "insert into cake(numOfPeople,flavor,address,date,time,payment,userID) values ('" + People2.Text + "','" + Flavor2.Text + "','" + Address2.Text + "','" + Date2.Text + "','" + Time2.Text + "','" + Payment2.Text + "','" + userID + "')";
        MySqlCommand command4 = new MySqlCommand(query4, con.connection());
        int result = command4.ExecuteNonQuery();

        if (result > 0)
        {
            Response.Write("<script>alert('Your order has been received. ');</script>");
        }
        else
        {
            Response.Write("<script>alert('Please try again');</script>");

        }

        con.connection().Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string query4 = "insert into cake(numOfPeople,flavor,address,date,time,payment,userID) values ('" + People3.Text + "','" + Flavor3.Text + "','" + Address3.Text + "','" + Date3.Text + "','" + Time3.Text + "','" + Payment3.Text + "','" + userID + "')";
        MySqlCommand command4 = new MySqlCommand(query4, con.connection());
        int result = command4.ExecuteNonQuery();

        if (result > 0)
        {
            Response.Write("<script>alert('Your order has been received. ');</script>");
        }
        else
        {
            Response.Write("<script>alert('Please try again');</script>");

        }

        con.connection().Close();
    }
}