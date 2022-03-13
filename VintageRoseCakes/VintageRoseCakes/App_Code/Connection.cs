using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;

public class Connection
{
    public MySqlConnection connection()
    {
        MySqlConnection con = new MySqlConnection("Server=localhost;Database=vintagerosecakes;Uid=root;Pwd='';");
        con.Open();
        return con;
    }
}