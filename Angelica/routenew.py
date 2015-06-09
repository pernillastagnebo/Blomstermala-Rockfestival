# coding: utf8
from bottle import route, run, template, request, static_file, default_app
from os import listdir
import mysql.connector



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
@route('/Anställd')
def employee():
    """Hämtar variblerna från employee från filen databas.py"""
    """och retunerar värdet"""
    
    employeelist=databas.employee()
    return template('views/Anställd', employeelist=employeelist)
@route('/employee/add-employee')
def add_new_employee():
    return template('views/employee/add-employee')

@route('/employee/employee-saved', method="POST")
def employee_saved():
     
    SSN = request.forms.SSN
    Name = request.forms.Name
    PhoneNO = request.forms.PhoneNO
    
    addemployee=databas.add_employee(SSN,Name,PhoneNO)
    
    return template('views/employee-saved', SSN=SSN, Name=Name, PhoneNO=PhoneNO)



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
    Contactperson = request.forms.Contactperson
    
    addband=databas.Add_band(Bandname,Genre,Country,Contactperson)
    
        
    return template('views/kansli-band-saved', Bandname=Bandname, Genre=Genre, Country=Country, Contactperson=Contactperson)


run(debug=True, reloader=True, host='localhost', port=8080)

