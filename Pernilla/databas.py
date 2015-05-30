# coding: utf-8
import mysql.connector


#connect
db = mysql.connector.connect(host="195.178.235.60",
user="ae2947", passwd="Nilorak96", db="ae2947")
cursor=db.cursor()

'''def Get_employee():
    cursor.execute("Select EmployeeID, SSN, Name, PhoneNO from Employee order by EmployeeID")
    #get the resultset as a tuple
    result = cursor.fetchall()
    for employee in result:
        print employee [0], employee [1], employee [2], employee [3]'''

def Get_band():
    '''Läser från databasen och hämtar allt som finns i tabellen Band'''
    '''Lägger alla variabler i en lista och returnerar värdet'''
    
    cursor.execute("Select Bandname, Genre, Country, Contact from Band order by Bandname")
    result = cursor.fetchall()
    
    bandlist=[]
    bandlist.append(result)

    for band in bandlist:
        print band
            
    return band

                        
        
    
 
        
        
 
    

    



    
       

 
'''def Show_stage():
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
    In_charge()'''



