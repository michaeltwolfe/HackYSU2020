import requests
import json

class Checks:
    def __removeDescription(self, line):
        line = line.replace("<tr>", "").replace("</tr>", "").replace("<td>", "").replace("</td>", "").replace("Description", "")
        return line

    def __removeSize(self, line):
        line = line.replace("<tr>", "").replace("</tr>", "").replace("<td>", "").replace("</td>", "").replace("Size/Weight", "")
        return line

    def CheckApi(self, upcCode):
        description = ""
        amount = ""

        response = requests.get('https://www.upcdatabase.com/item/' + upcCode)

        for line in response.text.split('\n'):
            if "Description" in line:
                description = self.__removeDescription(line)
                #print(description)

            if "Size/Weight" in line:
                amount = self.__removeSize(line)
                #print(amount)

        data = {
            "description": description,
            "amount": amount
        }

        return dict(data)

    def CheckDatabase(self, upcCode):
        return False