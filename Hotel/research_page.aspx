<%@ Page Language="C#" AutoEventWireup="true" CodeFile="research_page.aspx.cs" Inherits="research_page" %>

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
					<span class="tag">查詢訂單</span>
				</div>
			</div>
		</div>
	<!-- Header --> 

	<!-- Main -->
		<div id="main">
			<div id="content" class="container">
				<section>
					<header>
						<h2>查詢</h2>
						<span class="byline">取得你的個人資料吧！</span>
					</header>
					<div style="display:inline-block">
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label_gID" runat="server" Text="顧客ID" Width ="100px"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_input_gID" runat="server"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button_gID" runat="server" Text="Search" OnClick="Button_gID_Click" />
                        </p>
                        <p>
                            <asp:Label ID="Label_account" runat="server" Text="帳號"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_input_account" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="Label_password" runat="server" Text="密碼"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_input_password" runat="server" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button_act_and_pwd" runat="server" Text="Search" OnClick="Button_act_and_pwd_Click" />
                        </p>
                    </div>
                    <div style="display:inline">
                        <asp:Label ID="Label_information" runat="server" Visible="False"></asp:Label>
                    </div>
				</section>
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
