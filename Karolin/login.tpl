<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="/static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<div id="wrapper">
			<header>
					<img src="/static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li><a href="http://localhost:8080/band">BAND</a></li>
					<li><a href="http://localhost:8080/program">PROGRAM</a></li>
					<li ><a href="http://localhost:8080/kontakt">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

		<section id="content">
			<p>Du kan endast logga in om du jobbar på Blomstermåla Rockfestival. </p>
			<fieldset>
			<legend>Login Form</legend>
			    <form action="demo_form.php" methiod="POST" autocomplete="on">
				<label>Username: <input type="text" name="Username"autofocus/></label>
				<label>Password: <input type="password" name="Password"autofocus/></label>
				<input type="submit" value="Login"/> 
				</form>
			</fieldset>
		</section>

		</div>
	</body>
</html>
