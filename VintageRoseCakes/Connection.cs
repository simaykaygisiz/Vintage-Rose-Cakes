using System;
using MySql.Data;
using MySql.Data.MySqlClient;

public class Class1
{

    public MySqlConnection connection()
    {
        MySqlConnection con = new MySqlConnection("Server=localhost;Database=vintagerosecakes;Uid=root;Pwd='';");
        con.Open();
        return con;
    }
}
