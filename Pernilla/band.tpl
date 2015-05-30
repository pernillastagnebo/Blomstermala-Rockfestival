<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="login.html">Logga in</a>
		<div id="wrapper">
			<header>
					<img src="static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li id="chosen"><a href="band.html">BAND</a></li>
					<li><a href="program.html">PROGRAM</a></li>
					<li><a href="kontakt.html">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

		<section id="content">
			<h2 class="headline">BAND</h2>
			<h4 id="banden">I år gästar de här banden oss!</h4>
			
			<!--Skriver endast ut bandnamnen från band-tabellen-->
			% for bandname in band:
			<center>{{bandname[0]}}</center>
				
			
		</section>

		
	</body>
</html>
