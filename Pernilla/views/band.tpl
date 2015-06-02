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
					
					<li id="chosen"><a href="band">BAND</a></li>
					<li><a href="program">PROGRAM</a></li>
					<li><a href="kontakt">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

			<section id="content">
				<h2 class="headline">BAND</h2>
				
			
				<!--Skriver endast ut bandnamnen från band-tabellen-->
				% for band in bandcolumn:
				<a href="bandinfo"><p id="bandname">Hej {{band[0]}}</p></a>
				

				
				
				
			
			</section>

		</div>

	</body>
</html>
