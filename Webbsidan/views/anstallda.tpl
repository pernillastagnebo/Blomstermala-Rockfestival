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
					<li><a href="/kansli/band">BAND</a></li>
					<li id="chosen"><a href="program.html">PROGRAM</a></li>
					<li id ="chosen"><a href="/anstallda">ANSTÄLLDA</a></li>
					<li ><a href="Scener.html">SCENER</a></li>
				</ul>
			
			</nav>
		<section>
		<p>
			<a href ="/addemployee"><input type = "button" value = "Lägg till Anställd"></a>
		</p>
		
		<h2 class="staff">Alla anställda</h2>
		   		
			<form action ="">
			   <table style="width:50%;>
				<!--Skriver ut alla anställdas namn, personnummer och telefonnummer.-->
				% for employee in staff:
					<fieldset>
					<th id="Person">Personnummer:</th> 
					<td>{{employee[1]}}</td>
					<br>
					<th id="Namn">Namn:</th>
					<td>{{employee[2]}}</td>
					<br>
					<th id="telenr">Telefonnummer: </th>
					<td>{{employee[3]}}</td>
					<br>
					</fieldset>
				</table>
			</form>
			</section>
		
		</div>
	</body>
</html>