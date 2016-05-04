using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pay_attention : System.Web.UI.Page
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
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected bool check_guest_information(string PID)
    {
        bool isExist = false;
        conn = new SqlConnection(source);

        conn.Open();
        SQL_cmd = new SqlCommand(@"SELECT *
                                   FROM guest_information
                                   WHERE PID = '" + PID + "'", conn);

        read = SQL_cmd.ExecuteReader();
        if (read.Read())
            isExist = true;

        conn.Close();

        return isExist;
    }

    protected string generate_guest_ID(string fname, string lname, int gder, string ID, string em, string addr1, string addr2, int p)
    {
        string gID;
        gID = gder.ToString();
        int nums_of_guest = 0;
        conn = new SqlConnection(source);
        conn.Open();
        
        SQL_cmd = new SqlCommand(@"SELECT COUNT (guest_ID)
                                   FROM guest_information", conn);

        read = SQL_cmd.ExecuteReader();

        if (read.Read())
            nums_of_guest = read.GetInt32(0);
        conn.Close();

        for (int i = 0; i < 7 - (nums_of_guest / 10 + 1); i++)
        {
            gID += '0';
        }
        gID += nums_of_guest;
        return gID;
    }

    protected void insert_guest_information(string gID, string fname, string lname, int gder, string ID, string em, string ph, string addr1, string addr2, int p)
    {
        /*
        INSERT INTO guest_information (guest_ID,first_name,last_name,gender,PID,email,phone,addr_city,addr_other,pay)
                VALUES('09178272','John','Lou',0,'A12545','a@a.com','0912989','taipei','mmuy',1);
         */
        string insert_guest;
        string guest_ID, first_name, last_name, PID, email, phone, addr_city, addr_other;
        int gender, pay;

        guest_ID = gID;
        first_name = fname;
        last_name = lname;
        PID = ID;
        email = em;
        phone = ph;
        addr_city = addr1;
        addr_other = addr2;
        gender = gder;
        pay = p;

        if (!check_guest_information(PID))
        {

            insert_guest = @"INSERT INTO guest_information (guest_ID,first_name,last_name,gender,PID,email,phone,addr_city,addr_other,pay)
                        VALUES('" + guest_ID + "','" + first_name + "','" + last_name + "'," + gender + ",'" + PID + "','" + email + "','" + phone + "','" + addr_city + "','" + addr_other + "'," + pay + ")";

            conn = new SqlConnection(source);
            conn.Open();
            SQL_cmd = new SqlCommand(insert_guest, conn);
            SQL_cmd.ExecuteReader();
            conn.Close();
        }
        else
        {
        }
    }

    protected string get_guest_ID_by_PID(string PID)
    {
        string GID ="";
        conn = new SqlConnection(source);

        conn.Open();
        SQL_cmd = new SqlCommand(@"SELECT guest_ID
                                   FROM guest_information
                                   WHERE PID = '" + PID + "'", conn);

        read = SQL_cmd.ExecuteReader();
        if (read.Read())
            GID = read.GetValue(0).ToString();

        conn.Close();

        return GID;
    }

    protected void insert_member(string act, string pwd, string gID)
    {
        string insert_member;
        string account, passwd, guest_ID;

        account = act;
        passwd = pwd;
        guest_ID = gID;

        //確認是否為會員
        if (!check_member(account, guest_ID))
        {
            conn = new SqlConnection(source);
            conn.Open();
            insert_member = @"INSERT INTO member (account,passwd,guest_ID) VALUES ('" + account + "','" + passwd + "','" + guest_ID + "')";
            SQL_cmd = new SqlCommand(insert_member, conn);
            SQL_cmd.ExecuteReader();
            conn.Close();
        }
    }

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

    protected void Button_get_register_Click(object sender, EventArgs e)
    {
        if (CheckBox_pay_attention.Checked)
        {
            string fname = TextBox_fname.Text;
            string lname = TextBox_lname.Text;
            int gender = int.Parse(DropDownList_gender.SelectedItem.Value);
            string PID = TextBox_PID.Text;
            string email = TextBox_email.Text;
            string phone = TextBox_phone.Text;
            string city = DropDownList_city.SelectedItem.Value;
            string addr = TextBox_addr.Text;
            int pay = int.Parse(DropDownList_pay.SelectedItem.Value);

            string account = TextBox_account.Text;
            string password = TextBox_passwd.Text;

            string gID;

            if (!check_guest_information(PID))
            {
                gID = generate_guest_ID(fname, lname, gender, PID, email, city, addr, pay);
                insert_guest_information(gID, fname, lname, gender, PID, email, phone, city, addr, pay);
            }
            else
            {
                gID = get_guest_ID_by_PID(PID);
            }
            //insert_reservation(night,gID, checkIn_time, level_of_room,type_of_room);
        
            insert_member(account, password, gID);
        }
    }
}
