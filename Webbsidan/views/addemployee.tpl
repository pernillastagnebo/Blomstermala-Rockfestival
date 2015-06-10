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
					<li><a href="/kansli/band">BAND</a></li>
					<li id="chosen"><a href="/anstallda">ANSTÄLLDA</a></li>
					<li><a href="xxxxxxxxxx">SCENER</a></li>
				</ul>
			
			</nav>
		<section>
			    <h2>Lägg till en ny anställd</h2>
				    <h4>Regler</h4>
				    <p>*Varje Kontaktperson får vara ansvarig för max 15 bandmedlemmar. </p>
				    <p>*Säkerhetsarnsvariga får endast ha ansvar för en scen i taget.</p>
			        
			        <form action = "/anstallda/addemployee/savedemployee" method = "POST">
					<h2 id="headlinestext">Lägg till en Anställd</h2>
					<p>
						<label for "SSN">Personnummer:</label>
						<input type = "text" name = "SSN">
					</p>
					<p>
						<label for "Name">Namn:</label>
						<input type = "text" name = "Name">
					</p>
					<p>
						<label for "PhoneNO">Telefonummer:</label>
						<input type = "text" name = "PhoneNO">
					</p>
					<p><input type = "submit" value = "Spara"></p>

		</section>
		

		</div>
	</body>
</html>