<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
	<!-- BEGIN head -->
	<head>
		<!-- Title -->
		<title>Online magazine</title>
		
		<script src="jquery-3.1.1.min.js" type="text/javascript"></script>
		<link href="main.css" rel="stylesheet" type="text/css"/>
		<script src="main.js" type="text/javascript"></script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		
	</head>
	
	<body class="backGroundPic">
		<header class="main-hearer">
			<div class="langs-holder"></div>
			<div class="row">
				<!-- logo -->
				<a href="http://abv.bg" class="logo">
					<img src="logo.png" style="width: 262px" alt="logo"/>
				</a>
				<!-- END logo -->
				
				<div class="phone-email">	
					<!-- BEGIN .about_us contacts info -->
					<div class="about-us ">
						<span class="phone">0888 88 88 88</span>
						<a href="mailto:office@yousite.com" target="_blank" class="email">office@yousite.com</a>
					</div>
					<!-- END .about-us -->
				</div>
				
				<div class="articuls" id="cartinfo">
					<a href="" class="shopping">
						<span><span id="total_items"> &nbsp 0</span> артикула (0.00 лв. общо)</span>
					</a>
				</div>
			</div>
			
			<div>		
				<nav class="main-menu">
				    <ul>
				        <li>
				            <a href="http://parketensviat.maxcart.bg/">Начало</a>    
				        </li>
						<li class="dropdown">
							<a href="http://woodworld.mymaxcart.eu/продукти-832.html" class="dropbtn">Продукти</a>
							<div class="dropdown-content">
								<a href="http://woodworld.mymaxcart.eu/ламиниран_паркет-1382.html">Ламиниран паркет</a>
								<a href="http://woodworld.mymaxcart.eu/естествен_паркет-1392.html">Естествен паркет</a>
								<a href="http://woodworld.mymaxcart.eu/трислоен_паркет-1402.html">Трислоен паркет</a>
								<a href="http://woodworld.mymaxcart.eu/екзотичен_паркет-1412.html">Екзотичен паркет</a>
								<a href="http://woodworld.mymaxcart.eu/стенни_облицовки-1422.html">Стенни облицовки</a>
								<a href="http://woodworld.mymaxcart.eu/интериорни_врати-1432.html">Интериорни врати</a>
							</div>
						</li>
                        
						<li class="dropdown">
							<a href="http://woodworld.mymaxcart.eu/аксесоари-862.html" class="dropbtn">Аксесоари</a>
							<div class="dropdown-content">
								<a href="http://woodworld.mymaxcart.eu/подложка_за_ламиниран_паркет-952.html">Подложка за ламиниран паркет</a>
								<a href="http://woodworld.mymaxcart.eu/первази-962.html">Первази</a>
								<a href="http://woodworld.mymaxcart.eu/подови_первази_arbiton_lmx46-1082.html">Подови первази Arbiton LMX46</a>
								<a href="http://woodworld.mymaxcart.eu/подови_первази_arbiton_lm60-1092.html">Подови первази Arbiton LM60</a>
								<a href="http://woodworld.mymaxcart.eu/подови_первази_arbiton_lm70_indo_-1102.html">Подови первази Arbiton LM70 ( INDO )</a>
								<a href="http://woodworld.mymaxcart.eu/преходни_лайсни-1112.html">Преходни лайсни</a>
							</div>
						</li>
							
				        <li><a href="http://woodworld.mymaxcart.eu/промоции-560.html">Промоции</a></li>
				        <li><a href="http://woodworld.mymaxcart.eu/новини-1.html">Новини</a></li>
				        <li><a href="http://woodworld.mymaxcart.eu/галерия-2.html">Галерия</a></li>
						<li><a href="http://woodworld.mymaxcart.eu/контакти-600.html">Контакти</a></li> 
						
				    </ul>
					
					<!-- 
					<style>
@media (min-width: 800px) {
  .navigationSelector {
    display: none;
  }
  .navigationSelectorHeader
  {
    display: none;
  }
  
}
</style>
					<div style="display: none; width: 228px;" class="selector"><span style="width: 206px; -moz-user-select: none;">Моля изберете</span><select class="navigationSelector" style="">
						<option>Моля изберете</option>
						
						<option value="http://woodworld.mymaxcart.eu/продукти-832.html">Продукти</option>
							<option value="http://woodworld.mymaxcart.eu/ламиниран_паркет-1382.html"> Ламиниран паркет</option>
							<option value="http://woodworld.mymaxcart.eu/естествен_паркет-1392.html"> Естествен паркет</option>
							<option value="http://woodworld.mymaxcart.eu/трислоен_паркет-1402.html"> Трислоен паркет</option>
							<option value="http://woodworld.mymaxcart.eu/екзотичен_паркет-1412.html"> Екзотичен паркет</option>
							<option value="http://woodworld.mymaxcart.eu/стенни_облицовки-1422.html"> Стенни облицовки</option>
							<option value="http://woodworld.mymaxcart.eu/интериорни_врати-1432.html"> Интериорни врати</option>
							<option value="http://woodworld.mymaxcart.eu/аксесоари-862.html">Аксесоари</option>
							<option value="http://woodworld.mymaxcart.eu/подложка_за_ламиниран_паркет-952.html"> Подложка за ламиниран паркет</option>
							<option value="http://woodworld.mymaxcart.eu/первази-962.html">&nbsp;&nbsp; - Первази</option>
							<option value="http://woodworld.mymaxcart.eu/подови_первази_arbiton_lmx46-1082.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Подови первази Arbiton LMX46</option>
							<option value="http://woodworld.mymaxcart.eu/подови_первази_arbiton_lm60-1092.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Подови первази Arbiton LM60</option>
							<option value="http://woodworld.mymaxcart.eu/подови_первази_arbiton_lm70_indo_-1102.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Подови первази Arbiton LM70 ( INDO )</option>
							<option value="http://woodworld.mymaxcart.eu/преходни_лайсни-1112.html"> Преходни лайсни</option>
							
							<option value="http://parketensviat.maxcart.bg/">Начало</option>
						<option value="http://woodworld.mymaxcart.eu/промоции-560.html">Промоции</option>
						<option value="http://woodworld.mymaxcart.eu/новини-1.html">Новини</option>
						<option value="http://woodworld.mymaxcart.eu/галерия-2.html">Галерия</option>
						<option value="http://woodworld.mymaxcart.eu/контакти-600.html">Контакти</option>
					</select></div>
					
					<form action="search.php" method="GET" class="search">
						<input name="search_input" placeholder="Търси" type="text">
						<input name="search_in" value="products" placeholder="Търси" type="hidden">
					</form>
                  -->  
				<!-- BEGIN .main-menu -->
				</nav>
			</div>
	
				<div style="max-width:980px; margin-top: 20px;">
					<img class="mySlides fade" src="1.jpg" style="width:100%; display:block;">
					<img class="mySlides fade" src="2.jpg" style="width:100%">
					<img class="mySlides fade" src="3.jpg" style="width:100%">
				</div>
				<div class="w3-center w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
					<div onclick="plusDivs(-1)">
						<img class="w3-left w3-padding-left" src="arrow-3.png" style="width:92px; height:86px;">
					</div>
					<div onclick="plusDivs(1)">
						<img class="w3-right w3-padding-right" src="arrow-4.png" style="width:92px; height:86px;">
					</div>
					<span class="w3-badge demo w3-border w3-transparent w3-hover-white w3-white" onclick="currentDiv(1)"></span>
					<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
					<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
				</div>
			
					
				<!--
				<div id="hompage-slider_content" style="position: relative; width: 1903px; height: 302px;">
					
					
					<div class="item" style="background-image: url(&quot;http://woodworld.mymaxcart.eu//sites/woodworld.mymaxcart.eu/files/1432220112_untitled_4.jpg&quot;); position: absolute; top: 0px; left: 0px; display: block; z-index: 4; opacity: 1; width: 1903px;">
						<div class="title-wrapper clearfix">
							<div class="title">
								
								<p class="clearfix"><a href="#" class="headline">Уют стил топлина</a></p>
								
							</div>
						</div>
						<img src="http://woodworld.mymaxcart.eu//templates/PANDORA/images/blank.png" alt="">
					
					</div>
					
					<div class="item" style="background-image: url(&quot;http://woodworld.mymaxcart.eu//sites/woodworld.mymaxcart.eu/files/1432220023_untitled_5.jpg&quot;); position: absolute; top: 0px; left: 0px; display: none; z-index: 3; opacity: 0; width: 1903px;">
						<div class="title-wrapper clearfix">
							<div class="title">
							</div>
						</div>
						<img src="http://woodworld.mymaxcart.eu//templates/PANDORA/images/blank.png" alt="">
					
					</div>
					
					<div class="item" style="background-image: url(&quot;http://woodworld.mymaxcart.eu//sites/woodworld.mymaxcart.eu/files/1435751605_1111111111111.jpg&quot;); position: absolute; top: 0px; left: 0px; display: none; z-index: 3; opacity: 0; width: 1903px;">
						<div class="title-wrapper clearfix">
							<div class="title">
								
							</div>
						</div>
						<img src="http://woodworld.mymaxcart.eu//templates/PANDORA/images/blank.png" alt="">
					
                     
					</div>
				</div> -->
				
			<!-- END .main-slider -->

			
           
			
		</header>
	</body>
	
	
</html>