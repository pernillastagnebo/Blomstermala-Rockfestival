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
					<li><a href="xxxxxxxxxx">ANSTÄLLDA</a></li>
					<li><a href="xxxxxxxxxx">SCENER</a></li>
					
				</ul>
			
			</nav>
		

			<section id="content">
				<h2 class="headline">BAND - LÄGG TILL NYTT BAND</h2>
				
			
				<!--Skriver endast ut bandnamnen från band-tabellen-->
				<form action = "/kansli/band/saved" method = "POST">
					<h2 id="headlinestext">Bandinformation</h2>
					<p>
						<label for "Bandname">Bandnamn:</label>
						<input type = "text" value="Bandname" name = "Bandname">
					</p>
					<p>
						<label for "Genre">Genre:</label>
						<input type = "text" value="Genre" name = "Genre">
					</p>
					<p>
						<label for "Country">Ursprungsland:</label>
						<input type = "text" value="Country" name = "Country">
					</p>
					<br>

					<!--
					<h2 id="headlinestext">Sceninformation</h2>
					<p>
						<label for "Stage">Scen:</label>
						<select name="Stage">
							<option>Välj scen</option>
							<option value="Lilla Scenen">Lilla Scenen</option>
							<option value="Mellan Scenen">Mellan Scenen</option>
							<option value="Stora Scenen">Stora Scenen</option>
							<option value="MysTältet">MysTältet</option>
						</select>
					</p>
					<p>
						<label for "Day">Dag:</label>
						<select name="Day">
							<option>Välj dag</option>
							<option value="Torsdag 18 juni">Torsdag 18 juni</option>
							<option value="Fredag 19 juni">Fredag 19 juni</option>
							<option value="Lördag 20 juni">Lördag 20 juni</option>
							<option value="Söndag 21 juni">Söndag 21 juni</option>
						</select>
					</p>
					<p>
						<label for "Time">Tidpunkt:</label>
						<select name="Time">
							<option>Välj tid</option>
							<option value="17.00-19.00">17.00-19.00</option>
							<option value="19.00-21.00">19.00-21.00</option>
							<option value="21.00-23.00">21.00-23.00</option>
							<option value="23.00-01.00">23.00-01.00</option>
						</select>
					</p>
					-->
					<p>
						<label for "Contactperson">Kontaktperson:</label>
						<input type = "text" name = "Contactperson">
					</p>
					
					<p><input type = "submit" value = "Spara"></p>

			
			</section>

		</div>

	</body>
</html>
