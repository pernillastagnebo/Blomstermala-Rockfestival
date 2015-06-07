# coding: utf-8
from bottle import request
import mysql.connector





'''Kopplar upp sig till databasen'''
db = mysql.connector.connect(host="195.178.235.60", user="ae6226", passwd="hhellstrom", db="ae6226")
cursor=db.cursor()



def Band():
    '''Läser från databasen och hämtar allt som finns i tabellen Band'''
    '''Lägger alla variabler i en lista och returnerar värdet'''
    
    cursor.execute("Select Bandname, Genre, Country from Band order by Bandname")
    result = cursor.fetchall()
    
    bandlist=[]
    bandlist.append(result)

    for bandcolumn in bandlist:
        print bandcolumn
            
    return bandcolumn



    

def Add_band(Bandname,Genre,Country,Contactperson):
    
    
    sql = "INSERT INTO Band(Bandname, Genre, Country, Contact)VALUES ('%s','%s','%s','%s')"%(Bandname,Genre,Country,Contactperson)

    try:
        cursor.execute(sql)
        db.commit()

    except:
        db.rollback()

    db.close()



