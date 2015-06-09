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


def Get_employee():
    '''Läser från databasen och hämtar allt som finns i tabellen Band'''
    '''Lägger alla variabler i en lista och returnerar värdet'''
    
    cursor.execute("Select SSN, Name, PhoneNO from Employee order by EmployeeID")
    employeelist = cursor.fetchall()
    #iterate through result
    
    liststaff=[]
    l = 0
    for employee in employeelist:
        liststaff.append(employee)
        print liststaff[l]
        l = l+1
    return liststaff
    #get the resultset as a tuple

def listemployee():
    '''Läser från databasen och hämtar allt som finns i tabellen Get_employee'''
    '''Lägger alla variabler i en lista och returnerar värdet'''
    cursor.execute("Select EmployeeID, SSN, Name, PhoneNO from Employee order by EmployeeID")
    results = cursor.fetchall()
    allemployee =[]
    allemployee.append(results)
    for staff in allemployee:
        print staff
    return staff

def add_employee(SSN,Name,PhoneNO):
    #förbereder ett cursor objekt genom att använda cursor() metod
    cursor =db.cursor()
    '''Insert, lägger till värden till Employee tabellen'''
    sql ="INSERT INTO Employee(SSN, Name, PhoneNO) VALUES ('%s','%s', '%s')"%(SSN,Name,PhoneNO)
    try:
        #Genoför Sql funktionen
        #Lägger till ändringen i databasen
        cursor.execute(sql)
        db.commit()
    except:
        #Gör en rollback om det blir fel
        #stänger databasen    
        db.rollback()
        db.close()
        
def remove_employee(SSN,Name,PhoneNO):
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    # Prepare SQL query to DELETE required records
    sql = "DELETE FROM Employee(SSN, Name, PhoneNO) VALUES('%s', '%s', '%s')"%(SSN,Name,PhoneNO) 
    try:
       # Execute the SQL command
       # Commit your changes in the database
       cursor.execute(sql)
       db.commit()
    except:
       # Rollback in case there is any error
       # disconnect from server   
       db.rollback()
       db.close()
