from sqlalchemy import Column, ForeignKey, Integer, String, Numeric, DateTime, ForeignKey, CHAR, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from models.model import *
import json

engine = create_engine("mysql+pymysql://mike:plusthepanzers4@localhost/HackYSU2020")
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()

def GetScannedItem():
    return ""

def GetRecipes():
    RecipeList = []
    Complete = 1

    Recipes = session.query(Recipe)
    
    for item in Recipes:
        Ingredients = session.query(Ingredient).filter(Ingredient.RECIPEID == item.ID)

        for ingredientItem in Ingredients:
            GenericItems = session.query(Generic).filter(Generic.ID == ingredientItem.GENERICID)

            for genericIngredient in GenericItems:
                if ingredientItem.SUBTRACTAMT > genericIngredient.TOTALAMT:
                    Complete = 0
                    break

            if Complete == 0:
                break


        IndividualRecipe = {
            "id": item.ID,
            "name": item.TITLE,
            "complete": Complete
        }

        session.close()

        RecipeList.append(IndividualRecipe)

    return json.dumps(RecipeList)

def GetInventory():
    GenericInventoryList = []

    GenericInventoryItems = session.query(Generic)

    for item in GenericInventoryItems:
        InventoryItem = {
            "id": item.ID,
            "name": item.TITLE,
            "total": str(item.TOTALAMT)
        }

        session.close()

        GenericInventoryList.append(InventoryItem)

    return json.dumps(GenericInventoryList)