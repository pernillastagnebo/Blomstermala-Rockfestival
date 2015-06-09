<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="/static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="login">Logga in</a>
		<div id="wrapper">

			<header>
				<img src="/static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li id="chosen"><a href="band">BAND</a></li>
					<li><a href="program">PROGRAM</a></li>
					<li><a href="kontakt">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

			<section id="content">
				<h2 class="headline">BANDINFORMATION</h2>
				
			
				<!--Skriver ut bandnamn, genre, land, bandmedlemmar samt information om dem.-->
				% for bandmember in bandmembercolumn:
					<p id="headlinestext">{{bandmember[0]}}</p>
					<p id="bandinfo">Ett band från {{bandmember[2]}} som spelar {{bandmember[1]}}</p>
				
				% for bandmember in bandmembercolumn:
					<p id="bandmember">{{bandmember[3]}}</p>
					<p id="bandinfo">{{bandmember[4]}}</p>

				
				
				
			
			</section>

		</div>

	</body>
</html>
