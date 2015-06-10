<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Blomstermala Rockfestival</title>
		<link href="/static/style.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<a href="/band">Logga in</a>
		<div id="wrapper">
			<header>
					<img src="/static/festival.png" alt="BlomstermÃ¥la Rockfestival">
			</header>
		
		
			<nav>
				<ul> 	
					
					<li><a href="/band">BAND</a></li>
					<li id="chosen"><a href="/">PROGRAM</a></li>
					<li ><a href="/kontakt">KONTAKT</a></li>
					
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
