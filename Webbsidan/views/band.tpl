<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="/kansli/band">Logga in</a>
		<div id="wrapper">

			<header>
				<img src="static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li id="chosen"><a href="/band">BAND</a></li>
					<li><a href="/program">PROGRAM</a></li>
					<li><a href="xxxxxxxx">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

			<section id="content">
				<h2 class="headline">BAND</h2>
				
			
				<!--Skriver ut bandnamn, genre och land från band-tabellen-->

				% for band in bandcolumn:
					<p id="headlinestext">{{band[0]}}</p>
					<p id="bandinfo">Ursprungsland: {{band[2]}}, Genre: {{band[1]}}</p>
					<br>
					
				

				
				
				
			
			</section>

		</div>

	</body>
</html>
