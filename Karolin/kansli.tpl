<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="/static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="http://localhost:8080/login">Logga ut</a>
		<div id="wrapper">
			<header>
					<img src="/static/festival.png" alt="Blomstermåla Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li><a href="http://localhost:8080/band">BAND</a></li>
					<li><a href="http://localhost:8080/program">PROGRAM</a></li>
					<li ><a href="chttp://localhost:8080/kontakt">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

		<section id="content">
		<h1>Bokade band just nu:</h1>
			<table>
			  <tr>
			    <th>Band</th>
				<th>Kontaktperson</th>
				<th>Speldag</th>
				<th>Tid</th>
				<th> Scen</th>
			  </tr>	
			  <tr>
			    <td>CALVIN HARRIS</td>
				<td>Anna Lasson</td>
				<td>21/6</td>
				<td>Gräshoppan</td>
			<fieldset>
			<legend>Boka nytt band</legend>
			  <form action="">
			     <h4>Välj kontakt person:</h4>
				 <select>
				   <option value="Anna Larsson">Anna Larsson</option>
				   <option value="Tomas Pedersson">Tomas Pedersson</option>
			       <option value="Ali Hasd">Ali Hasd</option>
                   <option value="Gitt Månsson">Gitt Månsson</option>
				 </select>
				   <form action="demo_form.php" methiod="POST" autocomplete="on">
				   <label>Bandnamn: <input type="text" name="Bandnamn"autofocus/></label>
				   <label>Ursprungsland: <input type="text" name="Ursprungsland"autofocus/></label> 
				   <label>Username: <input type="text" name="Username"autofocus/></label>
				   <label>Bandinfo: <input type="text" name="Bandinfo:"autofocus/></label
				   <textarea rows="40" cols="50">
				   </textarea>
		          <input type="submit" value="Lägg till band"/> 
				  </form>
			</fieldset>

		</section>

		</div>
	</body>
</html>
