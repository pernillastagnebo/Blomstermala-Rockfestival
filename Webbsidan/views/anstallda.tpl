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
		<p>
			<a href ="/anstallda/addemployee"><input type = "button" value = "Lägg till Anställd"></a>
		</p>
			<center>
				<a href = "/anstallda"><input type = "button" value = "Ändra anställd"></a>
				<a href = "/anstallda/deleteemployee"><input type = "button" value = "Ta bort anställd"></a>
			<center>
		% for employee in staff:
						    <center>
					<p id="headlinestext">{{employee[1]}}<br>{{employee[2]}}<br>{{employee[3]}}</p>
					<form>
							</center>
					
					<br>
		
			</section>
		
		</div>
	</body>
</html>