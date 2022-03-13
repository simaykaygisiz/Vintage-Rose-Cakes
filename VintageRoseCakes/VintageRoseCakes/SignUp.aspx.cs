using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Connection con = new Connection();
    string userID;
    string userName;

    protected void Button2_Click(object sender, EventArgs e)
    {
        string query4 = "insert into user(userName,userSurname,userEmail,userPassword,userPhone,userAddress) values ('" + TextBoxName.Text + "','" + TextBoxSurname.Text + "','" + TextBoxEmail.Text + "','" + TextBoxPassword.Text + "','" + TextBoxPhoneNumber.Text + "','" + TextBoxAddress.Text + "')";
        MySqlCommand command4 = new MySqlCommand(query4, con.connection());
        int result = command4.ExecuteNonQuery();

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

        if (result > 0)
        {
            Response.Redirect("Delivery.aspx?userID=" + userID + "&userName=" + userName);
            Response.Write("<script>alert('Welcome');</script>");
        }
        else
        {
            Response.Write("<script>alert('Please try again');</script>");

        }

        con.connection().Close();

    }
}