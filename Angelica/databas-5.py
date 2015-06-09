# coding: utf-8
import mysql.connector

#connect
db = mysql.connector.connect(host="195.178.235.60",
user="ae2947", passwd="Nilorak96", db="ae2947")
cursor=db.cursor()

def Get_band():
    '''Läser från databasen och hämtar allt som finns i tabellen Band'''
    '''Lägger alla variabler i en lista och returnerar värdet'''
    
    cursor.execute("Select Bandname, Genre, Country from Band order by Bandname")
    result = cursor.fetchall()
    
    bandlist=[]
    l = 0

    for bandcolumn in bandlist:
        bandlist.append(bandcolumn)
        print bandcolumn [l]
        l = l+1
    return bandlist
    #get the resultset as a tuple

def Get_employee():
    '''Läser från databasen och hämtar allt som finns i tabellen Band'''
    '''Lägger alla variabler i en lista och returnerar värdet'''
    
    cursor.execute("Select SSN, Name, PhoneNO from Employee order by EmployeeID")
    result = cursor.fetchall()

    #iterate through result
    
    employeelist=[]
    l = 0

    for employee in result:
        employeelist.append(employee)
        print employeelist[l]
        l = l+1
    return employeelist
    #get the resultset as a tuple

def employee():
    '''Läser från databasen och hämtar allt som finns i tabellen Get_employee'''
    '''Lägger alla variabler i en lista och returnerar värdet'''

    cursor.execute("Select EmployeeID, SSN, Name, PhoneNO from Employee order by EmployeeID")
    result = cursor.fetchall()

    employeelist =[]
    employeelist.append(result)

    for staff in employeelist:
        print staff
        return staff
    
    employee()
    
def add_employee():

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
    
def remove_employee():
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
    
def Get_band():
    cursor.execute("Select Bandname, Genre, Country, Contact from Band order by Bandname")
    result = cursor.fetchall()
    #iterate through resultser
    bandLista=[]
    i = 0
    
    for band in result:
        bandLista.append(band)
        print bandLista[i]
        i = i+1
    return bandLista
    #get the resultset as a tuple

def Add_band(Bandname,Genre,Country,Contactperson):
    sql = "INSERT INTO Band(Bandname, Genre, Country, Contact)VALUES ('%s','%s','%s','%s')"%(Bandname,Genre,Country,Contactperson)
    try:
        cursor.execute(sql)
        db.commit()
    except:
        db.rollback()
    db.close()
 
def Show_stage():
    cursor.execute("Select Stagename, Location, Size from Stage order by Size")
    #get the result as a tuple
    result = cursor.fetchall()

    #iterate through resultser
    for Stagenamne in stage:
        print Stagename [0], Stagename [1], Stagename[2], Stagename [3],
    Show_stage()
    

    
def BandMembers():
    cursor.execute("Select MemberID, Name, Information from Bandmembers")
    Bandmembers()
                                    
Get_band()
Get_employee()
employee()
