from scanner import barcode_reader
from checks import Checks

while True:
    #get code
    upcNumber = barcode_reader()

    check = Checks()
    #checks database
    databaseData = check.CheckDatabase(upcNumber)

    if databaseData is False:
        #checks half ass api
        apiData = check.CheckApi(upcNumber)

        if apiData["description"] == "":
            print("Nothing was found")