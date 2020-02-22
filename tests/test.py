import requests
import json

def removeDescription(line):
    line = line.replace("<tr>", "").replace("</tr>", "").replace("<td>", "").replace("</td>", "").replace("Description", "")
    return line

def removeSize(line):
    line = line.replace("<tr>", "").replace("</tr>", "").replace("<td>", "").replace("</td>", "").replace("Size/Weight", "")
    return line

response = requests.get('https://www.upcdatabase.com/item/028400040112')

for line in response.text.split('\n'):
    if "Description" in line:
        descRemoved = removeDescription(line)
        print(descRemoved)

    if "Size/Weight" in line:
        sizeRemoved = removeSize(line)
        print(sizeRemoved)