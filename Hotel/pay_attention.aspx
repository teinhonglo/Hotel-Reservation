<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pay_attention.aspx.cs" Inherits="pay_attention" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>飯店訂房系統</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css' />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Header -->
		<div id="header">
			<div id="nav-wrapper"> 
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="active"><a href="home_page.aspx">Homepage</a></li>
						<li><a href="pay_attention.aspx">註冊/須知</a></li>
						<li><a href="get_reservation.aspx">下訂單</a></li>
						<li><a href="research_page.aspx">查詢訂單</a></li>
					</ul>
				</nav>
			</div>
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">Welcome</a></h1>
					<span class="tag">註冊會員 / 訂房須知</span>
				</div>
			</div>
		</div>
	<!-- Header --> 

	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">
					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2>相關連結</h2>
							</header>
							<div class="row">
								<section class="6u">
									<ul class="default">
										<li><a href="home_page.aspx">回首頁</a></li>
										<li><a href="#">註冊/須知</a></li>
										<li><a href="get_reservation.aspx">訂房間</a></li>
										<li><a href="research_page.aspx">查詢訂單</a></li>
									</ul>
								</section>
							</div>
						</section>
						<section>
							<header>
								<h2>其餘事項</h2>
							</header>
							<ul class="style">
								<li>
									<p class="posted"></p>
									<p><strong><a href="http://fcfs.csie.fju.edu.tw/Vote/database/index.php">去投票！</a></strong></p>
								</li>
							</ul>
						</section>
					</div>
					
					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
							<header>
								<h2>會員註冊</h2>
								<span class="byline">歡迎加入我們！</span>
							</header>
                                <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                  <br />
                                  <asp:Label ID="Label_account" runat="server" Height="20px" Text="帳號" Width="100px" Font-Names="新細明體" Font-Size="15pt"></asp:Label>
                                  <asp:TextBox ID="TextBox_account" runat="server" Height="25px" Width="150px" MaxLength="15"></asp:TextBox>
                                  <br />
                                  <asp:Label ID="Label_passwd" runat="server" Height="20px" Text="密碼" Width="100px" Font-Size="15pt"></asp:Label>
                                  <asp:TextBox ID="TextBox_passwd" runat="server" Height="25px" Width="150px" MaxLength="15" TextMode="Password"></asp:TextBox>
                                  <br />
                                  <asp:Label ID="Label_confirm_pwd" runat="server" Height="20px" Text="確認密碼" Width="100px" Font-Size="15pt"></asp:Label>
                                  <asp:TextBox ID="TextBox_confirm_pwd" runat="server" Height="25px" Width="150px" MaxLength="15" TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>
                                  <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密碼不一致" ControlToCompare="TextBox_passwd" ControlToValidate="TextBox_confirm_pwd"></asp:CompareValidator>
                               </div>
                                <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                  <asp:Label ID="label_fname" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="名：" Width="80px"></asp:Label>
                                  <asp:TextBox ID="TextBox_fname" runat="server" Height="30px" Width="130px" MaxLength="20"></asp:TextBox>
                                  <asp:Label ID="label_lname" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="姓：" Width="80px"></asp:Label>
                                  <asp:TextBox ID="TextBox_lname" runat="server" Height="30px" Width="130px" MaxLength="20"></asp:TextBox>
                                  <br />
                                  <br />
                                  <asp:Label ID="label_gender" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="性別：" Width="80px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_gender" runat="server" Font-Size="1.5em" Height="30px" Width="130px">
                                      <asp:ListItem Value="0">男</asp:ListItem>
                                      <asp:ListItem Value="1">女</asp:ListItem>
                                      <asp:ListItem Value="3">無性別</asp:ListItem>
                                  </asp:DropDownList>
                                  <asp:Label ID="label_year3" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="身份證：" Width="80px"></asp:Label>
                                  <asp:TextBox ID="TextBox_PID" runat="server" Height="30px" Width="130px" MaxLength="10"></asp:TextBox>
                                  <br />
                                  <br />
                                  <asp:Label ID="label_email" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="信箱：" Width="80px"></asp:Label>
                                  <asp:TextBox ID="TextBox_email" runat="server" Height="30px" Width="130px" MaxLength="40"></asp:TextBox>
                                  <asp:Label ID="label_phone" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="電話：" Width="80px"></asp:Label>
                                  <asp:TextBox ID="TextBox_phone" runat="server" Height="30px" Width="130px" MaxLength="10"></asp:TextBox>
                                  <br />
                                  <br />
                                  <asp:Label ID="label_addr1" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="縣市：" Width="80px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_city" runat="server" Font-Size="1.5em" Height="30px" Width="130px">
                                      <asp:ListItem Value="Taipei">台北市</asp:ListItem>
                                      <asp:ListItem Value="New Taipei City">新北市</asp:ListItem>
                                      <asp:ListItem Value="Taoyuan">桃園市</asp:ListItem>
                                      <asp:ListItem Value="Taichung">台中市</asp:ListItem>
                                      <asp:ListItem Value="Tainan">台南市</asp:ListItem>
                                      <asp:ListItem Value="Kaoshung">高雄市</asp:ListItem>
                                      <asp:ListItem Value="Keelung">基隆市</asp:ListItem>
                                      <asp:ListItem Value="Hsinchu">新竹市</asp:ListItem>
                                      <asp:ListItem Value="Chiayi">嘉義市</asp:ListItem>
                                      <asp:ListItem Value="Hsinchu_C">新竹縣</asp:ListItem>
                                      <asp:ListItem Value="Zhubei">竹北市</asp:ListItem>
                                      <asp:ListItem Value="Miaoli_C">苗栗縣</asp:ListItem>
                                      <asp:ListItem Value="Miaoli">苗栗市</asp:ListItem>
                                      <asp:ListItem Value="Changhua_C">彰化縣</asp:ListItem>
                                      <asp:ListItem Value="Changhua">彰化市</asp:ListItem>
                                      <asp:ListItem Value="Nantou_C">南投縣</asp:ListItem>
                                      <asp:ListItem Value="Nantou">南投市</asp:ListItem>
                                      <asp:ListItem Value="Yunlin_C">雲林縣</asp:ListItem>
                                      <asp:ListItem Value="Douliou">斗六市</asp:ListItem>
                                      <asp:ListItem Value="Chiayi_C">嘉義縣</asp:ListItem>
                                      <asp:ListItem Value="Taibao">太保市</asp:ListItem>
                                      <asp:ListItem Value="Pingtung_C">屏東縣</asp:ListItem>
                                      <asp:ListItem Value="Pingtung">屏東市</asp:ListItem>
                                      <asp:ListItem Value="Yilan_C">宜蘭縣</asp:ListItem>
                                      <asp:ListItem Value="Yilan">宜蘭市</asp:ListItem>
                                      <asp:ListItem Value="Hualien_C">花蓮縣</asp:ListItem>
                                      <asp:ListItem Value="Hualien">花蓮市</asp:ListItem>
                                      <asp:ListItem Value="Taitung_C">台東縣</asp:ListItem>
                                      <asp:ListItem Value="Taitung">台東市</asp:ListItem>
                                      <asp:ListItem Value="Penghu_C">澎湖縣</asp:ListItem>
                                      <asp:ListItem Value="Magong">馬公市</asp:ListItem>
                                      <asp:ListItem Value="Kinmen_C">金門縣</asp:ListItem>
                                      <asp:ListItem Value="Lienchiang_C">連江縣</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <br />
                                  <asp:Label ID="label_addr2" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="地址：" Width="80px"></asp:Label>
                                  <asp:TextBox ID="TextBox_addr" runat="server" Height="30px" Width="320px" MaxLength="50"></asp:TextBox>
                                  <br />
                                  <br />
                                  <asp:Label ID="label_pay" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="付款方式：" Width="100px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_pay" runat="server" Font-Size="1.5em" Height="30px" Width="130px">
                                      <asp:ListItem Value="0">轉帳</asp:ListItem>
                                      <asp:ListItem Value="1">信用卡</asp:ListItem>
                                      <asp:ListItem Value="2">付現</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <br />
                                  <br />
                              </div>
							  <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                      <table width="723" height="331" border="0" align="center" >
      <tr>
        <td width="717" >
            <table border="0" align="center" cellpadding="0" cellspacing="0" class="MsoNormalTable" id="table1" style="width: 684px">
          <tr>
            <td style="padding:0cm 0cm 0cm 0cm"><p class="MsoNormal" style="text-indent: 5.75pt; line-height: 13.5pt"> <b> <span style="font-size: 11.5pt; font-family: 新細明體"><br />
                    <span class="style3">│訂房須知 

              │</span></span></b></p></td>
          </tr>

          <tr style="height: 52.5pt">

            <td valign="top" style="padding:0cm 0cm 0cm 0cm;height:52.5pt"><p class="MsoNormal" style="line-height: 13.5pt"> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">若持特殊優惠價格入住請在辦理進房手續時檢附證明文件。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">為保障您個人訂房權益，訂房人應與辦理住宿（</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">check 

                  in</span><span style="font-size: 9.0pt; font-family: 新細明體">）者資料相符，並須於辦理入住</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">(Check 

                    in)</span><span style="font-size: 9.0pt; font-family: 新細明體">手續時提供相同身份<br />

                      &nbsp;&nbsp;&nbsp; 證明文件，以便查核登記。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                        </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span class="style2" style="font-size: 9.0pt; font-family: 新細明體">入住時間</span><span class="style2" style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">(CHECK 

                          IN)</span><span class="style2" style="font-size: 9.0pt; font-family: 新細明體">：</span><span class="style2" style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">PM15</span><span class="style2" style="font-size: 9.0pt; font-family: 新細明體">：</span><span class="style2" style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">00</span><span style="font-size: 9.0pt; font-family: 新細明體">，敬請依飯店之規定辦理入住；若您無法在</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">PM20:00</span><span style="font-size: 9.0pt; font-family: 新細明體">前辦理入住手續，請事先與飯店<br />

                            &nbsp;&nbsp;&nbsp; 電話確認保留，否則飯店將視為取消訂房，恕不退費，飯店可將房間開放予其他候補旅客。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                              </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span class="style2" style="font-size: 9.0pt; font-family: 新細明體">退房時間</span><span class="style2" style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">(CHECK 

                OUT)</span><span class="style2" style="font-size: 9.0pt; font-family: 新細明體">：</span><span class="style2" style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">12:00</span><span class="style2" style="font-size: 9.0pt; font-family: 新細明體">以前</span><span style="font-size: 9.0pt; font-family: 新細明體">。</span></p></td>
          </tr>

          <tr style="height: 1.5pt">

            <td height="30" style="padding:0cm 0cm 0cm 0cm;height:1.5pt"><p class="MsoNormal">&nbsp;</p>
              <p class="MsoNormal"><b><span class="style3" style="font-size: 11.5pt; font-family: 新細明體">│電話訂房相關流程與注意事項│</span></b></p></td>
          </tr>

          <tr style="height: 73.5pt">

            <td valign="top" style="padding:0cm 0cm 0cm 0cm;height:73.5pt"><p class="MsoNormal" style="line-height: 13.5pt"> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">請告知訂房人員您欲入住的日期與人數，訂房組人員會留下您的訂房相關資料，並傳真或</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">Mail</span><span style="font-size: 9.0pt; font-family: 新細明體">訂房授權書給您。訂房授權書<br />

              &nbsp;&nbsp;&nbsp; 之用意為保客戶預訂權益，敬請於回傳期限內確認回傳，若未於指定日期內回傳，則所預訂的房間將視同自動取消，恕不另<br />

              &nbsp;&nbsp;&nbsp;&nbsp; 行通知。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">各房型均有取得數量限制，建議儘早規劃、即早訂房，以確保假期順利。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                </span>

                </p></td>
          </tr><tr style="height: 1.5pt">

            <td height="30" style="padding:0cm 0cm 0cm 0cm;height:1.5pt"><p class="MsoNormal">&nbsp;</p>
              <p class="MsoNormal"><b><span class="style3" style="font-size: 11.5pt; font-family: 新細明體">│線上訂房相關流程與注意事項│</span></b></p></td>

          </tr>

          <tr>

            <td valign="top" style="padding:0cm 0cm 0cm 0cm"><p class="MsoNormal" style="line-height: 13.5pt"> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">需先加入會員方可訂房。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">一般訂房使用本網站訂房系統訂房者，需同意支付所訂房價總金額，以保留線上訂房之房間與價格之權利。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">您於網站上完成之信用卡付款，將立即由您所提供之信用卡帳號扣款。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">&nbsp;<br />

                </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">透過線上訂房確認後，若您需要更改住房時間，請於上班時間內直撥訂房專線洽詢：</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">08-8862345</span><span style="font-size: 9.0pt; font-family: 新細明體">轉訂房組為您更改日期<br />

                  &nbsp;&nbsp;&nbsp; 之服務。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                    </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">網路上之價格皆含稅及服務費。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />

                    </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">各房型均有取得數量限制，建議儘早規劃、即早訂房，以確保假期順利。</span></p></td>
          </tr>

          <tr style="height: 1.5pt">

            <td style="padding:0cm 0cm 0cm 0cm;height:1.5pt"><p class="MsoNormal style3"><b> <span style="font-size: 11.5pt; font-family: 新細明體" lang="EN-US" xml:lang="EN-US"> &nbsp;</span></b></p>
              <p class="MsoNormal style3"><b><span class="style3" style="font-size: 11.5pt; font-family: 新細明體">│住宿券訂房相關流程與注意事項│</span></b></p></td>
          </tr>

          <tr style="height: 1.5pt">

            <td height="184" valign="top" style="padding:0cm 0cm 0cm 0cm;height:1.5pt"><p><span class="MsoNormal" style="line-height: 13.5pt"><span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US">‧</span><span style="font-size: 9.0pt; font-family: 新細明體">本券為專案特惠價格，發票已開，恕不另行開立，如需退券退款，請務必合併發票辦理。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />
            </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">本券不得與其他優惠專案併用，須加蓋本公司鋼印始具效用，不得折換現金。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />
            </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">本券為不記名使用之票券，售出後請小心保管，遺失、毀損或塗改恕不補發。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US">&nbsp;</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />
</span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">辦理住宿登記時，請務必攜帶本券正本交予櫃檯人員收回。</span><span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />
</span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span><span style="font-size: 9.0pt; font-family: 新細明體">平日住宿更換房型或專案，須按本券房型與各房型價格及專案價格補足差額，各房型價格及專案價格以住宿當日售價為準。<br />
</span></span><span class="MsoNormal" style="line-height: 13.5pt"><span style="font-size: 9.0pt; font-family: 新細明體"><span class="MsoNormal" style="line-height: 13.5pt"><span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US">‧</span>本住宿券優惠期間過後，如遇券面房型定價調漲，使用本券時應補足房定價調整前後之價差。<span style="font-size: 9.0pt; font-family: Verdana" lang="EN-US" xml:lang="EN-US"><br />
              </span> <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>持住宿券請以電話訂房，勿在網路上訂房。</span></span></span></p>
              </td>
              <tr style="height: 1.5pt">

            <td style="padding:0cm 0cm 0cm 0cm;height:1.5pt"><p class="MsoNormal style3"><b> <span style="font-size: 11.5pt; font-family: 新細明體" lang="EN-US" xml:lang="EN-US"> &nbsp;</span></b></p>
              <p class="MsoNormal style3"><b><span class="style3" style="font-size: 11.5pt; font-family: 新細明體">│訂房取消規定│</span></b></p></td>
          </tr>

          <tr style="height: 1.5pt">

            <td height="184" valign="top" style="padding:0cm 0cm 0cm 0cm;height:1.5pt"><p><span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span></span><span class="style7">若於進住日期前14天(不含進住當天)通知本酒店，本筆訂金保留三個月有效，或可辦理全額退款。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若於進住日前10~13天內通知本酒店，本酒店有權沒收本筆訂金總額之30%。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若於進住日前7~9天內通知本酒店，本酒店有權沒收本筆訂金總額之50%。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若於進住日前4~6天內通知本酒店，本酒店有權沒收本筆訂金總額之60%。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若於進住日前2~3天內通知本酒店，本酒店有權沒收本筆訂金總額之70%。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若於進住日前1天前通知本酒店，本酒店有權沒收本筆訂金總額之80%。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若於進住當天(24小時內)通知本酒店取消或更改進住日期者，恕不保留亦不退還本筆訂金。 <br />
                  <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>若未於前述時間通知本酒店者，恕不保留亦不退回本筆訂金。</span></p>
              </td>
              
          </tr>

          <tr style="height: .75pt">

            <td valign="top" style="padding:0cm 0cm 0cm 0cm;height:.75pt"><p class="MsoNormal"> <span style="font-family: 新細明體" lang="EN-US" xml:lang="EN-US">&nbsp;</span></p>
              <p class="MsoNormal"><b><span class="style3" style="font-size: 11.5pt; font-family: 新細明體">│平假日定義│</span></b></p>
              <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>平日定義：週日至週五(假日、大假日、旺日除外)。<br />
                <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>假日定義：週六(大假日、旺日除外)<br />
                <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>大假日定義：暑假期間之週日至週五、跨年、連續假日及其前夕。<br />
                <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>旺日定義：暑假期間之週六、農曆春節期間、春吶期間。<br />
                <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>農曆春節假期以及暑假期間之定義請依本飯店公告規定為準。 <br />
                <span style="font-size: 9.0pt; font-family: 細明體" lang="EN-US" xml:lang="EN-US"> ‧</span>以上平日、假日、大假日、旺日等定義如有更動，請依官網公告為主，恕不另行個別通知。<br />
                <p class="MsoNormal"> <span style="font-family: 新細明體" lang="EN-US" xml:lang="EN-US">&nbsp;</span></p></td>
          </tr>
        </table></td>
      </tr>
    </table>
                                  <asp:CheckBox ID="CheckBox_pay_attention" runat="server"  /><asp:Label ID="Label_check" runat="server" Text="">是，我同意上述事項。</asp:Label>
                                  <asp:Button ID="Button_get_register" runat="server" Font-Size="1.5em" Height="40px" Text="註冊" Width="100px" OnClick="Button_get_register_Click" />
                              </div>
						</section>
					</div>

				</div>
			</div>
		</div>
	<!-- /Main -->
	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<section>
					<header>
						<h2>Get In Touch！</h2>
						<span class="byline">GG歪T_DB  資料庫期末專題-飯店訂房系統</span>
					</header>
				</section>
			</div>
		</div>
	<!-- /Footer -->
    </form>
</body>
</html>
