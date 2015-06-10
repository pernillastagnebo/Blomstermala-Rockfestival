# coding: utf-8
from bottle import request
import mysql.connector





'''Kopplar upp sig till databasen'''
db = mysql.connector.connect(host="195.178.235.60", user="ae6226", passwd="hhellstrom", db="ae6226")
cursor=db.cursor()


def Program_torsdag():
    cursor.execute("Select Band, Stage, Time from Schedule where Day='Torsdag 18 juni' order by Time")
    result = cursor.fetchall()
    #iterate through resultser
    torsdag=[]
    torsdag.append(result)
    for bandett in torsdag:
        print bandett
    return bandett

    

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

def Delete_band(Delete):
    
    
    sqldelete = "DELETE FROM Band WHERE Bandname LIKE'%s'"%(Delete)
    
    try:
        cursor.execute(sqldelete)
        db.commit()

    except:
        db.rollback()

    db.close()





