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
    """Förstasidan"""
    
    
    Bandname=databas.Get_band()
    print Bandname
    return template('band', Bandname=Bandname)
        
        
    

    
            
   



run(debug=True, reloader=True, host='localhost', port=8080)

