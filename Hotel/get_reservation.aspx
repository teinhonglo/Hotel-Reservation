<%@ Page Language="C#" AutoEventWireup="true" CodeFile="get_reservation.aspx.cs" Inherits="get_reservation" %>

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
						<li><a href="get_reservation_page.aspx">下訂單</a></li>
						<li><a href="research_page.aspx">查詢訂單</a></li>
					</ul>
				</nav>
			</div>
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">Welcome</a></h1>
					<span class="tag">下訂單</span>
				</div>
			</div>
		</div>
	<!-- Header --> 

	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">

					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
							<header>
								<h2>下訂單</h2>
								<span class="byline">歡迎使用訂房系統！</span>
							</header>
                            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="4px" Font-Names="Verdana" Font-Size="0.8em" OnFinishButtonClick="Wizard1_FinishButtonClick" Height="501px" Width="629px" DisplaySideBar="False" >
                      <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                      <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                                <StartNextButtonStyle Height="40px" BorderStyle="Solid" BorderWidth="2px" />
                                <StepPreviousButtonStyle BorderStyle="Dashed" />
                      <SideBarButtonStyle ForeColor="White" />
                      <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                      <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
                      <WizardSteps >
                          <asp:WizardStep runat="server" StepType="Start" title="Step1">
                              <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;" >
                                  <asp:Label ID="label_year" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False"  Text="年份" Width="50px" ></asp:Label>
                                  <asp:DropDownList ID="DropDownList_year" runat="server" Font-Size="15pt" Width="100px">
                                      <asp:ListItem>2015</asp:ListItem>
                                      <asp:ListItem>2016</asp:ListItem>
                                      <asp:ListItem>2017</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <asp:Label ID="label_month" runat="server" Font-Size="15pt" Text="月份" Width="50px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_month" runat="server" Font-Size="15pt" Width="100px">
                                      <asp:ListItem Value="01">01</asp:ListItem>
                                      <asp:ListItem>02</asp:ListItem>
                                      <asp:ListItem>03</asp:ListItem>
                                      <asp:ListItem>04</asp:ListItem>
                                      <asp:ListItem>05</asp:ListItem>
                                      <asp:ListItem>06</asp:ListItem>
                                      <asp:ListItem>07</asp:ListItem>
                                      <asp:ListItem>08</asp:ListItem>
                                      <asp:ListItem>09</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                      <asp:ListItem>11</asp:ListItem>
                                      <asp:ListItem>12</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <asp:Label ID="label_day" runat="server" Font-Size="15pt" Text="日期" Width="50px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_day" runat="server" Font-Size="15pt" Width="100px">
                                      <asp:ListItem>01</asp:ListItem>
                                      <asp:ListItem>02</asp:ListItem>
                                      <asp:ListItem>03</asp:ListItem>
                                      <asp:ListItem>04</asp:ListItem>
                                      <asp:ListItem>05</asp:ListItem>
                                      <asp:ListItem>06</asp:ListItem>
                                      <asp:ListItem>07</asp:ListItem>
                                      <asp:ListItem>08</asp:ListItem>
                                      <asp:ListItem>09</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                      <asp:ListItem>11</asp:ListItem>
                                      <asp:ListItem>12</asp:ListItem>
                                      <asp:ListItem>13</asp:ListItem>
                                      <asp:ListItem>14</asp:ListItem>
                                      <asp:ListItem>15</asp:ListItem>
                                      <asp:ListItem>16</asp:ListItem>
                                      <asp:ListItem>17</asp:ListItem>
                                      <asp:ListItem>18</asp:ListItem>
                                      <asp:ListItem>19</asp:ListItem>
                                      <asp:ListItem>20</asp:ListItem>
                                      <asp:ListItem>21</asp:ListItem>
                                      <asp:ListItem>22</asp:ListItem>
                                      <asp:ListItem>23</asp:ListItem>
                                      <asp:ListItem>24</asp:ListItem>
                                      <asp:ListItem>25</asp:ListItem>
                                      <asp:ListItem>26</asp:ListItem>
                                      <asp:ListItem>27</asp:ListItem>
                                      <asp:ListItem>28</asp:ListItem>
                                      <asp:ListItem>29</asp:ListItem>
                                      <asp:ListItem>30</asp:ListItem>
                                      <asp:ListItem>31</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <asp:Label ID="label_night" runat="server" Font-Size="15pt" Text="夜數" Width="50px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_night" runat="server" Font-Size="15pt" Width="100px">
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <br />
                              </div>
                          </asp:WizardStep>
                          <asp:WizardStep runat="server" StepType="Step" Title="Step2">
                              <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                  <asp:Label ID="label_type_of_room" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="房型" Width="50px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_type_of_room" runat="server" Font-Size="1.5em" Height="40px" Width="100px">
                                      <asp:ListItem Value="1">單人房</asp:ListItem>
                                      <asp:ListItem Value="2">雙人房</asp:ListItem>
                                      <asp:ListItem Value="3">三人房</asp:ListItem>
                                      <asp:ListItem Value="4">四人房</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <asp:Label ID="label_level_of_room" runat="server" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Height="20px" Text="等級" Width="50px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList_level_of_room" runat="server" Font-Size="1.5em" Height="40px" Width="128px">
                                      <asp:ListItem Value="0">精緻(LV.1)</asp:ListItem>
                                      <asp:ListItem Value="1">超值(LV.2)</asp:ListItem>
                                      <asp:ListItem Value="2">家庭(LV.3)</asp:ListItem>
                                  </asp:DropDownList>
                                  <br />
                                  <asp:Button ID="Button_search_room" runat="server" Font-Bold="True" Font-Size="15pt" OnClick="Button_search_room_Click" Text="查詢空房" Width="100px" />
                                  <br />
                                  <br />
                                  <asp:Label ID="Label_cost_of_room" runat="server" Font-Size="15pt" Height="20px" Text="價錢：" Width="149px"></asp:Label>
                                  <asp:Label ID="Label_cost_represent_text" runat="server" Font-Size="15pt" Height="20px" Width="149px"></asp:Label>
                                  <br />
                                  <asp:Label ID="Label_empty_of_room" runat="server" Font-Size="15pt" Height="20px" Text="空房：" Width="149px"></asp:Label>
                                  <asp:Label ID="Label_level_represent_text" runat="server" Font-Size="15pt" Height="20px" style="margin-bottom: 18px" Width="149px"></asp:Label>
                                  <br />
                              </div>
                          </asp:WizardStep>
                          <asp:WizardStep ID="Step3" runat="server" StepType="Step">
                              <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                  <br />
                                  <asp:Label ID="Label_account" runat="server" Height="20px" Text="帳號" Width="100px" Font-Names="新細明體" Font-Size="15pt"></asp:Label>
                                  <asp:TextBox ID="TextBox_account" runat="server" Height="25px" Width="150px" MaxLength="15"></asp:TextBox>
                                  <br />
                                  <asp:Label ID="Label_passwd" runat="server" Height="20px" Text="密碼" Width="100px" Font-Size="15pt"></asp:Label>
                                  <asp:TextBox ID="TextBox_passwd" runat="server" Height="25px" Width="150px" MaxLength="15" TextMode="Password"></asp:TextBox>
                                  <br />
                                  <br />
                                  <asp:Button ID="Button_Login" runat="server" Font-Size="15pt" Text="登入" Width="100px" Font-Bold="False" OnClick="Button_Login_Click" />
                                  <br />
                                  <asp:Label ID="Label_register" runat="server" Height="20px" Width="183px" ForeColor="Red" Visible="False" Font-Size="13pt"></asp:Label>
                                  <br />
                                  <asp:Button ID="Button_register" runat="server" Font-Size="15pt" Text="註冊" Width="100px" OnClick="Button_register_Click" />
                               </div>
                          </asp:WizardStep>
                          <asp:WizardStep ID="Step4" runat="server" StepType="Step">
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
                                  <asp:Button ID="Button_get_reservation" runat="server" Font-Size="1.5em" Height="40px" Text="下訂" Width="100px" OnClick="Button_get_reservation_Click"  />
                              </div>
                          </asp:WizardStep>
                          <asp:WizardStep ID="final" runat="server" StepType="Finish">
                              <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                <asp:Label ID="Label_information" runat="server" Height="229px" Visible="False" Width="270px"></asp:Label>
                              </div> 
                         </asp:WizardStep>
                          <asp:WizardStep ID="complete" runat="server" StepType="Complete">
                              <div class ="div_wizard" style ="margin: 20pt 0pt 20px 20px;">
                                <asp:Label ID="Label_complete" runat="server" Height="198px" Text="恭喜您， 已完成訂單程序！" Width="619px" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="30pt" Font-Strikeout="False" ForeColor="#000099" ></asp:Label>
                              </div>
                          </asp:WizardStep>
                      </WizardSteps>
                  </asp:Wizard>
						</section>
					</div>

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
										<li><a href="pay_attention.aspx">註冊/須知</a></li>
										<li><a href="#">訂房間</a></li>
										<li><a href="research_page.aspx">查詢訂單</a></li>
									</ul>
								</section>
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
