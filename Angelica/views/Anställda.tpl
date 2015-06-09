<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="login.html">Logga ut</a>
		<div id="wrapper">
			<header>
					<img src="festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					<li><a href="band.html">BAND</a></li>
					<li id="chosen"><a href="program.html">PROGRAM</a></li>
					<li id ="chosen"><a href="/Anställd">ANSTÄLLDA</a></li>
					<li ><a href="Scener.html">SCENER</a></li>
				</ul>
			
			</nav>
		<section>
		
		<h2 class="staff">Alla anställda</h2>
				
			<form action ="">
				<!--Skriver ut alla anställdas namn, personnummer och telefonnummer.-->
				% for staff in employeelist:
					<p id="Person">Personnummer:{{!employee[0]}}</p>
					<p id="Namn">Namn: {{!employee[2]}} </p>
					<p id="telenr">Telefonnummer: {{!employee[1]}}</p>
			</form>
			    <h2>Lägg till en ny anställd</h2>
				    <h4>Regler</h4>
				    <p>*Varje Kontaktperson får vara ansvarig för max 15 bandmedlemmar. </p>
				    <p>*Säkerhetsarnsvariga får endast ha ansvar för en scen i taget.</p>
			        
			        <form action = "/employee/saved" method = "POST">
					<h2 id="headlinestext">Lägg till en Anställd</h2>
					<p>
						<label for "SSN">Personnummer:</label>
						<input type = "text" value="SSN" name = "SSN">
					</p>
					<p>
						<label for "Name">Namn:</label>
						<input type = "text" value="Name" name = "Name">
					</p>
					<p>
						<label for "PhoneNO">Telefonummer:</label>
						<input type = "text" value="PhoneNO" name = "PhoneNO">
					</p>
		</section>
		

		</div>
	</body>
</html>