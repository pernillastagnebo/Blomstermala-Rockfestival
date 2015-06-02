import mysql.connector

#connect
db = mysql.connector.connect(host="195.178.235.60",
user="m11k7007", passwd="Tussan13", db="m11k7007")
cursor=db.cursor()

def Get_employee():
    cursor.execute("Select EmployeeID, SSN, Namn, PhoneNO order by EmployeeID")
    #get the resultset as a tuple
    result = cursor.fetchall()

    #iterate through resultser
    for employee in result:
        print employee [0], employee [1], employee [2], employee [3]
    Get_employee()
        
def Show_stage():
    cursor.execute("Select Stagename, Location, Size order by Size")
    #get the result as a tuple
    result = cursor.fetchall()

    #iterate through resultser
    for Stagenamne in stage:
        print Stagename [0], Stagename [1], Stagename[2], Stagename [3],
    Show_stage()
    
def Add_NewBand():
    SQLsstring ="Insert into Band values(" + Bandname + "," +
    Genre + "," + Country + "," + str(Antal_Bandmedlemmar +") 
    print SQLsstring
    cursor.execute(SQLsstring)
    db.commit()
    Add_NewBand()

def BandMembers():
    cursor.execute("Select MemberID, Name, Information 
    Bandmembers():
                                    
def Show_program():
    Show_program():                                    
                        
def In_charge():
    In_charge():                    
