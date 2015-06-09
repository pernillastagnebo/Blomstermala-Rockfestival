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
    """Hämtar variblerna i band från filen databas.py"""
    """och returnerar värdet."""
    bandcolumn=databas.Band()    
    
    return template('band', bandcolumn=bandcolumn)

@route('/kansli/band')
def kansli_band():
    """Hämtar variblerna i band från filen databas.py och returnerar värdet."""
    bandcolumn = databas.Band()
    
    return template('views/kansli-band', bandcolumn=bandcolumn)

@route('/kansli/band/add-band')
def kansli_band_add():
    """Visar sidan där man kan lägga till ett nytt band."""
                      
    return template('views/kansli-band-add')
         
@route('/kansli/band/saved', method="POST")
def kansli_band_saved():
    """Sparar alla värden i databasen som är inlagda eller ändrade."""
    
    Bandname = request.forms.Bandname
    Genre = request.forms.Genre
    Country = request.forms.Country
    Stage = request.forms.Stage
    Day = request.forms.Day
    Time = request.forms.Time
    Contactperson = request.forms.Contactperson

    
    
    addband=databas.Add_band(Bandname,Genre,Country,Stage, Day, Time,Contactperson)
    
        
    return template('views/kansli-band-saved', Bandname=Bandname, Genre=Genre, Country=Country, Stage=Stage, Day=Day, Time=Time,Contactperson=Contactperson)

@route('/anstallda')
def employee():
    """Hämtar variblerna från employee från filen databas.py"""
    """och retunerar värdet""" 
    staff=databas.listemployee()
    return template('views/anstallda', staff=staff)

@route('anstallda/addemployee')
def add_new_employee():
    """Visar sidan där man kan lägga till en ny anställd."""
    return template('views/addemployee')

@route('anstallda/addemployee/savedemployee', method="POST")
def employee_saved():
    """Sparar alla värden i databasen som är inlagda eller ändrade."""
    SSN = request.forms.SSN
    Name = request.forms.Name
    PhoneNO = request.forms.PhoneNO
    
    addemployee=databas.add_employee(SSN,Name,PhoneNO)
    
    return template('views/savedemployee', SSN=SSN, Name=Name, PhoneNO=PhoneNO)
run(debug=True, reloader=True, host='localhost', port=8080)
