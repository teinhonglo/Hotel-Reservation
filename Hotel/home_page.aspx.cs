using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_page : System.Web.UI.Page
{
    string source = @"server=localhost;
                     database=Hotel;
                     user id=user_account;
                     password=abcd";

    SqlConnection conn;
    SqlCommand SQL_cmd;
    SqlDataReader read;

    protected void Page_Load(object sender, EventArgs e)
    {
        count_guest();
    }

    protected void count_guest() 
    {
        conn = new SqlConnection(source);
        SQL_cmd = new SqlCommand (@"SELECT number
                                    FROM number_of_guest", conn);
        Application.Lock();
        conn.Open();
        read = SQL_cmd.ExecuteReader();
        if (read.Read())
        {
            Application["ArriveCount"] = read.GetInt32(0);
        }
        conn.Close();
        
        Application["ArriveCount"] = Convert.ToInt32(Application["ArriveCount"]) + 1;
        Application.Lock();
        Label_number_of_people.Text = Application["ArriveCount"].ToString();

        SQL_cmd = new SqlCommand(@"UPDATE number_of_guest
                                    SET number = " + Application["ArriveCount"].ToString(), conn);
        conn.Open();
        read = SQL_cmd.ExecuteReader();
        
        conn.Close();
    }
}