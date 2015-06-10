<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="/static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="http://localhost:8080/login">Logga in</a>
		<div id="wrapper">
			<header>
					<img src="/static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li id="chosen"><a href="http://localhost:8080/band">BAND</a></li>
					<li><a href="http://localhost:8080/program">PROGRAM</a></li>
					<li><a href="http://localhost:8080/kontakt">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

		<section id="content">
			<h2 class="headline">BAND</h2>
			<h4 id="banden">I år gästar de här banden oss!</h4>
			<p>{{bandLista}}</p>
		
								

		</section>

		</div>
	</body>
</html>
