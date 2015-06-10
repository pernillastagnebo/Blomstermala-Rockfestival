# coding: utf-8
import mysql.connector


#connect
db = mysql.connector.connect(host="195.178.235.60",
user="ae6226", passwd="hhellstrom", db="ae6226")
cursor=db.cursor()

def Get_employee():
    cursor.execute("Select EmployeeID, SSN, Name, PhoneNO from Employee order by EmployeeID")
    #get the resultset as a tuple
    result = cursor.fetchall()
    for employee in result:
        print employee [0], employee [1], employee [2], employee [3]

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
                                    
def Program_torsdag():
    cursor.execute("Select Band, Stage, Time from Schedule where Day='Torsdag 18 juni' order by Time")
    result = cursor.fetchall()
    #iterate through resultser
    torsdag=[]
    torsdag.append(result)
    for bandett in torsdag:
        print bandett
    return bandett             

def Program_fredag():
    cursor.execute("Select Band, Stage, Time from Schedule where Day='Fredag 19 juni' order by Time")
    result = cursor.fetchall()
    #iterate through resultser
    fredag=[]
    fredag.append(result)
    for bandetf in fredag:
        print bandetf
    return bandetf

def Program_lordag():
    cursor.execute("Select Band, Stage, Time from Schedule where Day='Lördag 20 juni' order by Time")
    result = cursor.fetchall()
    #iterate through resultser
    lordag=[]
    lordag.append(result)
    for bandetl in lordag:
        print bandetl
    return bandetl

def Program_sondag():
    cursor.execute("Select Band, Stage, Time from Schedule where Day='Söndag 21 juni' order by Time")
    result = cursor.fetchall()
    #iterate through resultser
    sondag =[]
    sondag.append(result)
    for bandets in sondag:
        print bandets
    return bandets
                        
def In_charge():
    In_charge()
Program_torsdag()
