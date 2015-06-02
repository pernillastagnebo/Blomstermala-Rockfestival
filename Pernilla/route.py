# coding: utf8
from bottle import route, run, template, request, static_file, default_app
from os import listdir
import mysql.connector
import databas


@route('/static/<filename>')
def serve_static(filename):
    """Lägger in CSS-filen samt bilderna"""
    return static_file(filename, root ="static")
 
    
@route('/band')
def band():
    """Hämtar variblerna i band från filen databas.py och returnerar värdet."""
    
    
    bandcolumn=databas.Get_band()
    
    
    return template('band', bandcolumn=bandcolumn)
        
@route('/bandinfo')
def bandinfo():
    """Hämtar variblerna i band och bandmembers från filen databas.py och returnerar värdet."""
    

    
    return template('views/bandinfo')
        
                
    

    
            
   



run(debug=True, reloader=True, host='localhost', port=8080)

