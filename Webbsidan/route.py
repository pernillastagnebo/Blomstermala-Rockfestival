# coding: utf8
from bottle import route, run, template, request, static_file, default_app
from os import listdir
import mysql.connector
import databas


@route('/static/<filename>')
def serve_static(filename):
    """Lägger in CSS-filen samt bilden"""
    return static_file(filename, root ="static")


'''PROGRAM-DELEN'''
@route('/')
def program():
    bandett=databas.Program_torsdag()
    
    return template("program", bandett=bandett)


 
'''BAND_DELEN'''  
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
    Contactperson = request.forms.Contactperson
    
    addband=databas.Add_band(Bandname,Genre,Country,Contactperson)
       
    return template('views/kansli-band-saved', Bandname=Bandname, Genre=Genre, Country=Country,Contactperson=Contactperson)


@route('/kansli/band/delete-band')
def kansli_band_delete():
    """Låter användaren skriva in vilket band som ska raderas."""
    
    return template('views/kansli-band-delete')


@route('/kansli/band/deleted', method="POST")
def kansli_band_deleted():
    """Tar det band som användaren vill ta bort och raderar det från databasen."""
    Delete = request.forms.Delete
    deleteband=databas.Delete_band(Delete)
    
    return template('views/kansli-band-banddeleted', Delete=Delete)



'''ANSTÄLLD-DELEN'''
@route('/anstallda')
def employee():
    """Hämtar variblerna från employee från filen databas.py"""
    """och retunerar värdet""" 
    staff=databas.listemployee()
    return template('views/anstallda', staff=staff)


@route('/anstallda/addemployee')
def add_new_employee():
    """Visar sidan där man kan lägga till en ny anställd."""
    return template('views/addemployee')


@route('/anstallda/addemployee/savedemployee', method="POST")
def employee_saved():
    """Sparar alla värden i databasen som är inlagda eller ändrade."""
    SSN = request.forms.SSN
    Name = request.forms.Name
    PhoneNO = request.forms.PhoneNO
    
    addemployee=databas.add_employee(SSN,Name,PhoneNO)
    
    return template('views/savedemployee', SSN=SSN, Name=Name, PhoneNO=PhoneNO)

@route('/anstallda/deleteemployee')
def delete_employee():
    """Webbsidan visar vilken anställd som är borttagen"""
    return template('views/deleteemployee')


@route('/deleteemployee/employeeisdeleted', method="POST")
def employee_delete():
    """Kansliet väljer vilken anställd som ska tas bort"""
    deleteemployee =request.forms.deleteemployee
    delete=databas.remove_employee(deleteemployee)
    return template('views/employeeisdeleted', deleteemployee=deleteemployee)

run(debug=True, reloader=True, host='localhost', port=8080)
