using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Connection con = new Connection();
    string userID;
    string userName;

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query1 = "select * from user where userEmail=@email and userPassword=@pwd";
        MySqlCommand command = new MySqlCommand(query1, con.connection());
        command.Parameters.AddWithValue("@email", TextBoxEmail.Text);
        command.Parameters.AddWithValue("@pwd", TextBoxPassword.Text);
        MySqlDataReader reader = command.ExecuteReader();

        string query2 = "select userID from user where userEmail=@email and userPassword=@pwd";
        MySqlCommand command2 = new MySqlCommand(query2, con.connection());
        command2.Parameters.AddWithValue("@email", TextBoxEmail.Text);
        command2.Parameters.AddWithValue("@pwd", TextBoxPassword.Text);
        MySqlDataReader reader2 = command2.ExecuteReader();

        while (reader2.Read())
        {
            userID = reader2[0].ToString();
        }

        string query3 = "select userName from user where userEmail=@email and userPassword=@pwd";
        MySqlCommand command3 = new MySqlCommand(query3, con.connection());
        command3.Parameters.AddWithValue("@email", TextBoxEmail.Text);
        command3.Parameters.AddWithValue("@pwd", TextBoxPassword.Text);
        MySqlDataReader reader3 = command3.ExecuteReader();

        while (reader3.Read())
        {
            userName = reader3[0].ToString();
        }


        if (reader.Read())
        {
            Response.Write("<script>alert('WELCOME');</script>");
            Response.Redirect("Delivery.aspx?userID=" + userID + "&userName=" + userName);
            
        }
        else
        {
            Response.Write("<script>alert('WRONG EMAIL OR PASSWORD');</script>");
        }

        con.connection().Close();
    }


}