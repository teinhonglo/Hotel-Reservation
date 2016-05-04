using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class get_reservation : System.Web.UI.Page
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
        DropDownList_pay.Items[0].Selected = false;
        DropDownList_city.Items[0].Selected = false;
        DropDownList_gender.Items[0].Selected = false;
    }
    //增加訂單資料
    protected void insert_reservation(int nt, string gID, int cTime, int level_of_room, int num_of_room)//, string rmID)
    {
        /*
         INSERT INTO reservation (night,guest_ID,room_ID,checkIn_time)VALUES(1,'00129982','1100',20150106);
        */
        string insert_reservation;
        int night, checkIn_time;
        string guest_ID, room_ID;

        night = nt;
        guest_ID = gID;
        checkIn_time = cTime;

        conn = new SqlConnection(source);
        conn.Open();
        string selected_roomID = @"SELECT room_ID
                                  FROM room
                                  WHERE rmLevel =" + level_of_room + " AND type_of_room = " + num_of_room;
        
        SQL_cmd = new SqlCommand(selected_roomID, conn);
        read = SQL_cmd.ExecuteReader();

        bool isCheck = false;

        while (read.Read())
        {
            room_ID = read.GetValue(0).ToString();
            //確認是否成立(房間ID & 時間)
            if (check_reservation(room_ID, night, checkIn_time))
            {
                //conn = new SqlConnection(source);
                conn.Close();
                conn.Open();
                insert_reservation = @" INSERT INTO reservation (night,guest_ID,room_ID,checkIn_time)
                                    VALUES(" + night + ",'" + guest_ID + "','" + room_ID + "'," + checkIn_time + ")";
                SQL_cmd = new SqlCommand(insert_reservation, conn);
                SQL_cmd.ExecuteReader();
                conn.Close();
                isCheck = true;
                break;
            }
        }
        if (!isCheck)
        {
        }
    }
    //產生顧客ID
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
    //search_empty_room
    protected string serach_room_ID(int num_of_room, int level_of_room, int checkIn_time, int night)
    {
        string room_ID = "";
        bool isRoom = false;
        conn = new SqlConnection(source);
        conn.Open();
        
        string selected_roomID = @"SELECT room_ID
                                  FROM room
                                  WHERE rmLevel =" + level_of_room + " AND type_of_room = " + num_of_room;
        
        SQL_cmd = new SqlCommand(selected_roomID, conn);
        read = SQL_cmd.ExecuteReader();

        while (read.Read())
        {
            room_ID = read.GetValue(0).ToString();
            //確認是否成立(房間ID & 時間)
            if (check_reservation(room_ID, night, checkIn_time))
            {
                isRoom = true;
                break;
            }
        }

        conn.Close();

        if (isRoom)
        {
            return room_ID;
        }
        else
        {
            return "-1";
        }
    }
    //增加顧客資訊
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

    //增加會員資料
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

    //藉由輸入帳密來讀取顧客資料
    protected void read_guest_information(string act, string pwd)
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

        while (read.Read())
        {
            TextBox_fname.Text = read.GetValue(1).ToString();
            TextBox_lname.Text = read.GetValue(2).ToString();
            DropDownList_gender.Items[(int)read.GetInt32(3)].Selected = true;
            TextBox_PID.Text = read.GetValue(4).ToString();
            TextBox_email.Text = read.GetValue(5).ToString();
            TextBox_phone.Text = read.GetValue(6).ToString();
            for (int i = 0; i < DropDownList_city.Items.Count; i++)
            {
                if (DropDownList_city.Items[i].Value == read.GetValue(7).ToString())
                {
                    DropDownList_city.Items[i].Selected = true;
                    break;
                }
            }
            TextBox_addr.Text = read.GetValue(8).ToString();
            DropDownList_pay.Items[(int)read.GetInt32(9)].Selected = true;
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

        Response.Write("<table align=center border=4>");
        Response.Write("<tr>");
        for (int i = 0; i < read.FieldCount; i++)
        {
            Response.Write("<td>" + read.GetName(i) + "</td>");
        }
        Response.Write("</tr>");

        while (read.Read())
        {
            Response.Write("<tr>");
            for (int i = 0; i < read.FieldCount; i++)
            {
                Response.Write("<td>" + read.GetValue(i) + "</td>");
            }
            Response.Write("</tr>");
        }
        Response.Write("</table>");
        conn.Close();
    }

    //確認訂單是否為可成立
    protected bool check_reservation(string rmID, int nt, int cTime)
    {
        bool isOK = true;
        int start_time, end_time, check_start_time, check_end_time;
        string room_ID;

        room_ID = rmID;
        start_time = cTime;             //使用者入住時間
        end_time = cTime + nt;        //使用者離開時間
        end_time = normal_date(end_time);
        SqlConnection conn1;
        conn1 = new SqlConnection(source);
        conn1.Open();
        SqlCommand SQL_cmd_check = new SqlCommand(@"SELECT room_ID
                                                  FROM reservation
                                                  WHERE room_ID = " + room_ID, conn1);
        SqlDataReader read_reservation;
        read_reservation = SQL_cmd_check.ExecuteReader();

        if (read_reservation.Read())
        {
            conn1.Close();
            conn1.Open();
            string ck_resrv = @"SELECT checkIn_time,night
                                FROM reservation
                                WHERE room_ID = " + room_ID;
            //conn.Open();
            SQL_cmd_check = new SqlCommand(ck_resrv, conn1);
            read_reservation = SQL_cmd_check.ExecuteReader();

            while (read_reservation.Read())
            {
                check_start_time = read_reservation.GetInt32(0);   //入住時間
                check_end_time = read_reservation.GetInt32(0) + read_reservation.GetInt32(1);  //離開時間
                check_end_time = normal_date(check_end_time);

                if (start_time >= check_start_time)
                {
                    if (start_time <= check_end_time)
                    {
                        isOK = false;
                        break;
                    }
                }
                else
                {
                    if (end_time >= start_time)
                    {
                        isOK = false;
                        break;
                    }
                }
            }
            conn1.Close();
        }
        else
        {
            isOK = true;
            conn1.Close();
        }
        //conn.Close();

        return isOK;
    }
    //時間正規化
    protected int normal_date(int unnormal_num)
    {
        int normal_num = 0;
        int[] days = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }; //各月份天數
        int day = unnormal_num % 100;           //日期 32
        int month = (unnormal_num / 100) % 100;     //月份 1
        int year = unnormal_num / 10000;        //年份 2015
        string conn_num;

        if (day < days[month])
        {
            normal_num = unnormal_num;
        }
        else
        {
            day -= days[month];
            month++;
            if (month > 12)
            {
                month -= 12;
                year++;
            }

            conn_num = year.ToString();

            if (month < 10)
                conn_num += '0';

            conn_num += month.ToString();

            if (day < 10)
                conn_num += '0';

            conn_num += day.ToString();

            normal_num = int.Parse(conn_num);
        }
        return normal_num;
    }
    //確認顧客是否已經存入資料了
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
    //by personal indetify get guest ID
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
    protected void Button_search_room_Click(object sender, EventArgs e)
    {
        String register_time = DropDownList_year.SelectedValue + DropDownList_month.SelectedValue + DropDownList_day.SelectedValue;
        int checkIn_time = int.Parse(register_time);
        int night = int.Parse(DropDownList_night.SelectedValue);
        int type_of_room = int.Parse(DropDownList_type_of_room.SelectedValue);
        int level_of_room = int.Parse(DropDownList_level_of_room.SelectedValue) + type_of_room;
        int result = int.Parse(serach_room_ID(type_of_room, level_of_room, checkIn_time, night));

        int price = (type_of_room * 250 + level_of_room * 1000) * night;
        Label_cost_represent_text.Text = "" + price + "元";

        if (result == -1)
        {
            Label_level_represent_text.Text = "沒有房間";
        }
        else
        {
            Label_level_represent_text.Text = "" + result;
        }
    }
    protected void Button_Login_Click(object sender, EventArgs e)
    {
        string account = TextBox_account.Text;
        string passwd = TextBox_passwd.Text;
        
        //確認是否為會員
        Label_register.Visible = true;
        if (login_check(account, passwd))
        {
            Label_register.Text = "歡迎光臨";
            read_guest_information(account, passwd);
        }
        else
        {
            if (check_member(account, passwd))
            {
                //Forget Password？
                Label_register.Text = "忘記密碼了嗎？";
            }
            else
            {
                //Not member？
                Label_register.Text = "不是會員，需要註冊嗎？";
            }
        }
    }
    protected void Button_register_Click(object sender, EventArgs e)
    {
        Response.Redirect("pay_attention.aspx");
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }

    protected bool sql_injection(string str)
    {
        bool checkOK=false;
        if (str.IndexOf(" ", 0) == 0 && str.IndexOf("'", 0) == 0 
            && str.IndexOf("<", 0) == 0 && str.IndexOf("*", 0)==0
            && str.IndexOf("=", 0) == 0 && str.IndexOf("%", 0)==0)
        {
            checkOK=true;
        }
        return checkOK;
    }

    protected void Button_get_reservation_Click(object sender, EventArgs e)
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
        
        String register_time = DropDownList_year.SelectedValue + DropDownList_month.SelectedValue + DropDownList_day.SelectedValue;
        int checkIn_time = int.Parse(register_time);
        int night = int.Parse(DropDownList_night.SelectedValue);
        int type_of_room = int.Parse(DropDownList_type_of_room.SelectedValue);
        int level_of_room = int.Parse(DropDownList_level_of_room.SelectedValue) + type_of_room;

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
        insert_reservation(night,gID, checkIn_time, level_of_room,type_of_room);        

        int result = int.Parse(serach_room_ID(type_of_room, level_of_room, checkIn_time, night));
        int price = (type_of_room * 250 + level_of_room * 1000) * night;

        int year = checkIn_time / 10000;
        int month = ( checkIn_time / 100 ) % 100;
        int day = checkIn_time % 100;

        Label_information.Visible = true;
        Label_information.Text = "<p>姓名：" + lname + " " + fname+"<br>";
        Label_information.Text += "房客識別碼" + gID+"<br>";
        Label_information.Text += "入住時間："+year+"年"+month+"月"+day+"日<br>";
        Label_information.Text += "夜數：" +night +"日<br>";
        Label_information.Text += "房間資訊：<br>";
        Label_information.Text += "人數："+type_of_room+"。等級："+DropDownList_level_of_room.SelectedItem.Text+"<br>";
        Label_information.Text += "房間ID："+result+"<br>";
        Label_information.Text += "價錢：" + price + "<br>";
    }
}



