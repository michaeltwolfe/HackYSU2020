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

    Recipes = session.query(Recipe)
    
    for item in Recipes:
        IndividualRecipe = {
            "id": item.ID,
            "name": item.TITLE
        }

        RecipeList.append(IndividualRecipe)

    return json.dumps(RecipeList)
