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
    bandLista=databas.Get_band()        
    return template("band", bandLista= bandLista)
            

    



run(debug=True, reloader=True, host='localhost', port=8080)
