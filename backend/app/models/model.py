import sys
from sqlalchemy import Column, ForeignKey, Integer, String, Numeric, DateTime, ForeignKey, CHAR, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

engine = create_engine("mysql://mike:plusthepanzers4@localhost/HackYSU2020")

Base = declarative_base(engine)

class Codes(Base):
    __tablename__ = "Codes"
    __table_args__ = {"autoload": True}

class Pantry(Base):
    __tablename__ = "Ingredient"
    __table_args__ = {"autoload": True}

class Instruction(Base):
    __tablename__ = "Instruction"
    __table_args__ = {"autoload": True}

class Menu(Base):
    __tablename__ = "Menu"
    __table_args__ = {"autoload": True}

class Ingredient(Base):
    __tablename__ = "Ingredient"
    __table_args__ = {"autoload": True}

class Recipe(Base):
    __tablename__ = "Recipe"
    __table_args__ = {"autoload": True}

class MealType(Base):
    __tablename__ = "MealType"
    __table_args__ = {"autoload": True}