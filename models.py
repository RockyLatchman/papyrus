from typing import List, Optional
from pydantic import BaseModel
from bunnet import Document, Indexed
import datetime


class Library(Document):
   pass

class Patrons(Document):
   pass

class Staff(Document):
   pass

class Location(BaseModel):
   pass

class Books(BaseModel):
   pass

class Reservations(BaseModel):
   pass

class Checkouts(BaseModel):
   pass
