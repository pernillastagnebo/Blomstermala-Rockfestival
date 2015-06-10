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
					
					<li><a href="http://localhost:8080/band">BAND</a></li>
					<li id="chosen"><a href="http://localhost:8080/program">PROGRAM</a></li>
					<li ><a href="http://localhost:8080/kontakt">KONTAKT</a></li>
					
				</ul>
			
			</nav>
		

		<section id="content">
			<h2 class="headline">PROGRAM</h2>
			<p class="day"> Torsdag 18 juni</p>
			<table style="width:100%">
                 
				 <tr>
                    <th>Band</th>
                    <th>Scen</th> 
                    <th>Tid</th>
                 </tr>
            </table>




            % for band in bandett:
                <table style="width:100%">
                    <tr> 
                           
                        <td>{{band[0]}}</td>
                        <td>{{band[1]}}</td>
                        <td>{{band[2]}}</td>
                    </tr>
                 
            	</table>
				
				

		</section>

		</div>
	</body>
</html>
