from sqlalchemy import Column, ForeignKey, Integer, String, Numeric, DateTime, ForeignKey, CHAR, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model import *
import re

from scanner import barcode_reader
from checks import Checks

engine = create_engine("mysql+pymysql://mike:plusthepanzers4@localhost/HackYSU2020")
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()

def FixItemAmount(amount):
    amount = re.sub("\(.*\)|\s-\s.*", "",amount)
    
    if "oz" in amount or "OZ" in amount:
        return amount.split()[0]
    elif "gallon" in amount:
        return float(amount.split()[0]) *128

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
            #fix amount
            amount = FixItemAmount(apiData["amount"])


    #else:
        #insert records
        ItemAmount = session.query(Codes).filter(Codes.UPCCODE == upcNumber)

        for item in ItemAmount:
            BrandId = item.BRANDID
            Size = item.ITEMSIZE

            CurrentAmount = session.query(Brand).filter(Brand.ID == BrandId)

            for itemAmount in CurrentAmount:
                NewTotal = itemAmount.AMOUNT + Size
                GenericId = itemAmount.GENERICID


                session.query(Brand).filter(Brand.ID == BrandId).update({"AMOUNT": NewTotal})
                session.commit()

                GenericAmount = session.query(Generic).filter(Generic.ID == GenericId)

                for genericItem in GenericAmount:
                    NewGenericTotal = genericItem.TOTALAMT + Size
                    session.query(Generic).filter(Generic.ID == GenericId).update({"TOTALAMT": NewGenericTotal})
                    session.commit()

    session.close()