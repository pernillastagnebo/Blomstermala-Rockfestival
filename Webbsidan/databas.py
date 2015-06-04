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

def add_employee():

    #förbereder ett cursor objekt genom att använda cursor() metod
    cursor =db.cursor()

    '''Insert, lägger till värden till Employee tabellen'''
    sql =("insert into EmployeeSSN, Name, PhoneNO values ('196812012432','Lois Morran', '07623423212'")
    
    try:
        #Genoför Sql funktionen
        cursor.execute(sql)
        #Lägger till ändringen i databasen
        db.commit()
    except:
        #Gör en rollback om det blir fel
        db.rollback()

        #stänger databasen
        db.close()
    
def remove_employee():
    # prepare a cursor object using cursor() method
    cursor = db.cursor()

    # Prepare SQL query to DELETE required records
    sql = "DELETE FROM EMPLOYEE WHERE Name > '%d'" % (20)
    try:
       # Execute the SQL command
       cursor.execute(sql)
       # Commit your changes in the database
       db.commit()
    except:
       # Rollback in case there is any error
       db.rollback()

       # disconnect from server
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

 
def Show_stage():
    cursor.execute("Select Stagename, Location, Size from Stage order by Size")
    #get the result as a tuple
    result = cursor.fetchall()

    #iterate through resultser
    for Stagenamne in stage:
        print Stagename [0], Stagename [1], Stagename[2], Stagename [3],
    Show_stage()
    
def Add_NewBand():
    SQLsstring ="Insert into Band values"(" + Bandname + "," + Genre + "," + Country + "," + str(Antal_Bandmedlemmar +")
    print SQLsstring
    cursor.execute(SQLsstring)
    db.commit()
    Add_NewBand()

def BandMembers():
    cursor.execute("Select MemberID, Name, Information from Bandmembers")
    Bandmembers()
                                    
def Show_program():
    Show_program()                                   
                        
def In_charge():
    In_charge()
Get_band()
