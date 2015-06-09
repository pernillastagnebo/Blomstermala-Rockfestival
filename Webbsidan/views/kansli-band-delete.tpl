<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="/static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="/band">Logga ut</a>
		<div id="wrapper">

			<header>
				<img src="/static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li id="chosen"><a href="/kansli/band">BAND</a></li>
					<li><a href="/anstallda">ANSTÄLLDA</a></li>
					<li><a href="xxxxxxxxxx">SCENER</a></li>
					
				</ul>
			
			</nav>
		

			<section id="content">
				<h2 class="headline">BAND - TA BORT BAND</h2>
				
			
				<!--Skriver endast ut bandnamnen från band-tabellen-->
				<form action = "/kansli/band/deleted" method = "POST">
					<h2 id="headlinestext">Bandinformation</h2>
					<p>
						<label for "Delete">Vilket band vill du ta bort?</label>
						<input type = "text" name = "Delete">
					</p>
					
					
					<p><input type = "submit" value = "Ta bort"></p>

			
			</section>

		</div>

	</body>
</html>
