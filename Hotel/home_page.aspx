<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home_page.aspx.cs" Inherits="home_page" %>

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
<body >
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
					<span class="tag">飯店訂房系統</span>
				</div>
			</div>
		</div>

	<!-- Featured -->
		<div id="featured">
			<div class="container">
				<header>
					<h2>歡迎</h2>
				</header>
				<p>這是<strong>飯店訂房系統</strong>，您是本網站的第<strong style="font-size:x-large"><asp:Label ID="Label_number_of_people" runat="server" Text=""></asp:Label></strong>位貴賓！</p>
				<hr />
				<div class="row">
					<section class="4u">
						<span class="pennant"><span class="fa fa-briefcase"></span></span>
						<h3>找不到房間嗎？</h3>
						<p><strong>下個訂單吧！</strong></p>
						<a href="get_reservation.aspx" class="button button-style1">前往</a>
					</section>
					<section class="4u">
						<span class="pennant"><span class="fa fa-globe"></span></span>
						<h3>想多了解我們嗎？</h3>
						<p><strong>加入會員吧！</strong></p>
						<a href="pay_attention.aspx" class="button button-style1">前往</a>
					</section>
					<section class="4u">
						<span class="pennant"><span class="fa fa-lock"></span></span>
						<h3>想查詢個人資料嗎？</h3>
						<p><strong>開始查詢吧！</strong></p>
						<a href="research_page.aspx" class="button button-style1">前往</a>
					</section>
				</div>
			</div>
		</div>
	<!-- Main -->
		<div id="main">
			<div id="content" class="container">

				<div class="row">
					<section class="6u">
						<a href="#" class="image full"><img src="images/pic01.jpg" alt="" width ="400" height ="331" /></a>
						<header>
							<h2>經典溫馨四人房</h2>
						</header>
                        <h4>4250元/夜</h4>
						<p><strong>溫和黃色燈光讓人有放鬆的感覺，為全家旅行的首選房型！寬敞舒適、採光充足的客房，低調簡約的室內設計，融入了在地藝文特色並穿插著暖色調的元素，自然風格與現代禪風之結合，讓舒適的住宿環境作您享樂旅遊疲累後的最佳後盾。</strong></p>
					</section>				
					<section class="6u">
						<a href="#" class="image full"><img src="images/pic02.jpg" alt="" width ="400" height ="331" /></a>
						<header>
							<h2>浪漫海風雙人房</h2>
						</header>
                        <h4>2250元/夜</h4>
						<p><strong>配有海底景觀LED電子屏幕，專為情侶族群打造！8坪精巧房型，提供一大床或兩小床的房型。舒適的臥床、貼心的獨立閱讀燈以及鮮美的精選水果，悉心備妥旅程中的細微需要，讓您擁有舒適怡然的停留。</strong></p>
					</section>				
				</div>

				<div class="row">
					<section class="6u">
						<a href="#" class="image full"><img src="images/pic03.jpg" alt="" width ="400" height ="331"/></a>
						<header>
							<h2>頂級商務單人房</h2>
						</header>
                        <h4>1250元/夜</h4>
						<p><strong>又稱「小套房」，室內面積13坪，一大床或兩小床床型、雙液晶電視與乾溼分離衛浴設備，提供舒適的住房體驗。簡潔現代的隔間設計，友訪聚會之際仍保有隱私，滿足各式住房需求。</strong></p>
					</section>
					<section class="6u">
						<a href="#" class="image full"><img src="images/pic04.jpg" alt="" width ="400" height ="331" /></a>
						<header>
							<h2>貴族景觀三人房</h2>
						</header>
                        <h4>3250元/夜</h4>
						<p><strong>府城古都的轉彎處，可見台南的蛻變與脈動，明亮採光、將日夜更迭的窗外景致完全映入眼簾，此房型設有獨立的臥室及客廳，適合喜歡寬敞度假空間與商務人士入住。</strong></p>
					</section>				
				</div>
			
			</div>
		</div>
	<!-- Tweet -->
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
    </form>
</body>
</html>
