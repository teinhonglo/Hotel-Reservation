using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class research_page : System.Web.UI.Page
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
        Label_information.Visible = false;
    }
    
    //藉由輸入帳密來讀取顧客資料
    protected void read_guest_information_for_ap(string act, string pwd)
    {
        conn = new SqlConnection(source);

        conn.Open();

        string selected_infor = @"SELECT *
                                  FROM guest_information
                                  WHERE guest_ID = (SELECT guest_ID
                                                    FROM member
                                                    WHERE account = '" + act + "' AND passwd = '" + pwd + "'" + ")";

        SQL_cmd = new SqlCommand(selected_infor, conn);
        read = SQL_cmd.ExecuteReader();

        string gID ="";
        
        if(read.Read())
        {
            gID = read.GetValue(0).ToString();
            read_guest_information_for_gID(gID);
        }
        get_reservation_method(gID);
        conn.Close();
    }
    //藉由輸入gID來讀取個人資料
    protected void read_guest_information_for_gID(string gID)
    {
        conn = new SqlConnection(source);

        conn.Open();

        string selected_infor = @"SELECT *
                                  FROM guest_information
                                  WHERE guest_ID = '" + gID + "'";

        SQL_cmd = new SqlCommand(selected_infor, conn);
        read = SQL_cmd.ExecuteReader();
        while (read.Read())
        {
            Label_information.Text += "<h1> 顧客資料</h1>";
            Label_information.Text += "<table style=\"border:4px #FF0000 solid;\";\">";

            Label_information.Text += "<tr>";
            Label_information.Text += "<td>名</td><td>姓</td>";
            Label_information.Text += "<td>性別</td><td>身分證</td>";
            Label_information.Text += "</tr>";
            
            Label_information.Text += "<tr>";
            Label_information.Text += "<td>" + read.GetValue(1) + "</td><td>" + read.GetValue(2) + "&nbsp;&nbsp;</td>";
            Label_information.Text += "<td>" + read.GetValue(3) + "</td><td>" + read.GetValue(4) + "&nbsp;&nbsp;</td>";
            Label_information.Text += "</tr>";

            Label_information.Text += "<tr>";
            Label_information.Text += "<td> 電子信箱 </td><td>電話</td>";
            Label_information.Text += "<td>地址</td><td></td>";
            Label_information.Text += "</tr>";

            Label_information.Text += "<tr>";
            Label_information.Text += "<td>" + read.GetValue(5) + "&nbsp;&nbsp;</td><td>" + read.GetValue(6) + "&nbsp;&nbsp;</td>";
            Label_information.Text += "<td>" + read.GetValue(7) + "" + read.GetValue(8) + "</td><td></td>";
            Label_information.Text += "</tr>";
            Label_information.Text += "</table>";
        }
        
        conn.Close();
    }

    //搜尋訂單資料
    protected void get_reservation_method(string gID)
    {
        string guest_ID;
        guest_ID = gID;
        conn = new SqlConnection(source);
        conn.Open();
        SQL_cmd = new SqlCommand(@"SELECT *
                                   FROM reservation
                                   WHERE guest_ID = '" + gID + "'", conn);

        read = SQL_cmd.ExecuteReader();
        int count = 0;

        Label_information.Text += "<h1> 訂單資料</h1>";
        Label_information.Text += "<table style=\"border:4px #FF0000 solid;\";\">";
        while (read.Read())
        {
            Label_information.Text += "<tr>";
            Label_information.Text += "<td>夜數&nbsp;&nbsp;&nbsp;&nbsp;</td><td>顧客ID&nbsp;&nbsp;&nbsp;&nbsp;</td><td>房間ID&nbsp;&nbsp;&nbsp;&nbsp;</td><td>入住時間&nbsp;&nbsp;&nbsp;&nbsp;</td>";
            Label_information.Text += "</tr>";
            Label_information.Text += "<tr>";
            Label_information.Text += "<td>" + read.GetValue(0) + "&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + read.GetValue(1) + "&nbsp;&nbsp;&nbsp;&nbsp;</td>";
            Label_information.Text += "<td>" + read.GetValue(2) + "&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + read.GetValue(3) + "</td>";
            Label_information.Text += "</tr>";
            count++;
        }
        Label_information.Text += "</table>";
        conn.Close();
    }

    //確認帳號或顧客ID是否在會員名單內(account,guest ID or password)
    protected bool check_member(string act, string gID)
    {
        bool isMember = false;
        string check_mem = @"SELECT *
                             FROM member
                             WHERE guest_ID = '" + gID + "' OR account ='" + act + "'";
        conn = new SqlConnection(source);
        conn.Open();
        SQL_cmd = new SqlCommand(check_mem, conn);
        read = SQL_cmd.ExecuteReader();
        if (read.Read())
        {
            isMember = true;
        }
        conn.Close();
        return isMember;
    }
    
    //確認登入的帳號及密碼是否正確
    protected bool login_check(string str_act, string str_pwd)
    {
        bool isLogin = false;
        string input_account, input_passwd;
        input_account = str_act;
        input_passwd = str_pwd;

        conn = new SqlConnection(source);

        conn.Open();

        string check_cmd = @"SELECT guest_ID
                             FROM member
                             WHERE account = '" + input_account + "' AND passwd = '" + input_passwd + "'";

        SQL_cmd = new SqlCommand(check_cmd, conn);
        read = SQL_cmd.ExecuteReader();
        if (read.Read())
        {
            isLogin = true;
        }

        conn.Close();
        return isLogin;
    }

    protected void Button_gID_Click(object sender, EventArgs e)
    {
        string gID = TextBox_input_gID.Text;
        Label_information.Text = "";
        read_guest_information_for_gID(gID);
        get_reservation_method(gID);
        Label_information.Visible = true;
    }

    protected void Button_act_and_pwd_Click(object sender, EventArgs e)
    {
        Label_information.Text = "";
        string account = TextBox_input_account.Text;
        string password = TextBox_input_password.Text;

        if (login_check(account, password))
        {
            read_guest_information_for_ap(account, password);
        }
        else
        {
            if (check_member(account, password))
            {
                Label_information.Text = "忘記密碼了嗎？";
            }
            else
            {
                Label_information.Text = "不是會員？";
            }
        }
        Label_information.Visible = true;
    }
}