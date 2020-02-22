from sqlalchemy import Column, ForeignKey, Integer, String, Numeric, DateTime, ForeignKey, CHAR, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from models.model import *

engine = create_engine("mysql://root:mitdemBus357MAG@localhost/HAkron")
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()

def GetScannedItem():
    pass

def GetRecipes():
    Recipes = session.query(Recipe)
    pass
