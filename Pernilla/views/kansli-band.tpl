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
				<h2 class="headline">BAND</h2>
				
			
				<!--Skriver ut bandnamn, genre och land från band-tabellen-->
				<form>
					<p>
						<a href = "/kansli/band/add-band"><input type = "button" value = "Lägg till nytt band"></a>
					</p>
					<p>
						<a href = "xxxxxxxxx"><input type = "button" value = "Lägg till ny bandmedlem (Ej implementerad)"></a>
					</p>
					<p>
						<a href = "/kansli/band/delete-band"><input type = "button" value = "Ta bort band"></a>
					</p>


				% for band in bandcolumn:
					<p id="headlinestext">{{band[0]}}</p>
					<form>
						<p>
							<center>
								<a href = "/kansli/band/update-band"><input type = "button" value = "Ändra band"></a>
								<a href = "/kansli/band/remove-band"><input type = "button" value = "Ta bort band"></a>
							</center>
						</p>
					<br>
					
				

				
				
				
			
			</section>

		</div>

	</body>
</html>
