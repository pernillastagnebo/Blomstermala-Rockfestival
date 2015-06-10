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
def program():
    """Förstasidan"""
    bandLista=databas.Get_band()        
    return template("band", bandLista= bandLista)

@route('/program')
def program():
    """Förstasidan"""
    bandett=databas.Program_torsdag()
    bandetf=databas.Program_fredag()
    bandetl=databas.Program_lordag()
    bandets=databas.Program_sondag()
    return template("program", bandett=bandett, bandetf=bandetf, bandetl=bandetl, bandets=bandets)

@route('/kontakt')
def kontakt():
    """Förstasidan"""
    return template("kontakt")

@route('/bandinfo')
def bandinfo():
    """Förstasidan"""
    return template("bandinfo")

@route('/login')
def login():
    """Förstasidan"""
    return template("login")

@route('/kansli')
def kansli():
    """Förstasidan"""
    return template("kansli")



run(debug=True, reloader=True, host='localhost', port=8080)
