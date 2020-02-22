from sqlalchemy import Column, ForeignKey, Integer, String, Numeric, DateTime, ForeignKey, CHAR, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from scanner import barcode_reader
from checks import Checks

engine = create_engine("mysql+pymysql://mike:plusthepanzers4@localhost/HackYSU2020")
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()

while True:
    #get code
    upcNumber = barcode_reader()

    check = Checks()
    #checks database
    databaseData = check.CheckDatabase(upcNumber)

    if databaseData is False:
        #checks half ass api
        apiData = check.CheckApi(upcNumber)
        print(apiData)

        if apiData["description"] == "":
            print("Nothing was found")
        else:
            #insert new record into Codes table
            NewCode = Codes (
                UPCCODE = upcNumber
            )

            session.add(NewCode)
            session.commit()


            


    else:
        #insert records