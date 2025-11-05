from typing import List, Optional
from bson import ObjectId
from pydantic import BaseModel, Field
from bunnet import Document, Indexed, Link
from datetime import datetime


class Location(BaseModel):
   address: str
   city: str
   state: str
   zip: str

class Copies(Document):
   number_of_copies: int
   status: str
   reference: bool
   acquisition_date: datetime

class Books(Document):
   isbn: str
   title: str
   author: str
   publisher: str
   publication_date: datetime
   genre: str
   copies: Link[Copies]

class Fines(BaseModel):
   amount: int
   reason: str
   status: str
   paid_date: datetime = Field(default=None)

class Reservations(Document):
   book_id: str
   reservation_date: datetime
   expiry_date: datetime
   status: str

class Checkouts(Document):
   book_id: str
   checkout_date: datetime
   return_date: datetime
   due_date: datetime
   renewal_count: int
   fines: Fines

class History(Document):
   checkouts: Link[Checkouts]
   reservations: Link[Reservations]

class Library(Document):
   name: str
   location: Location
   members: List[str]
   date_added: datetime
   books: Link[Books]

class Patrons(Document):
   fullname: str
   email: str
   password: str
   membership_number: str
   membership_status: str
   date_joined: datetime
   profile_image: str
   history: History


class Staff(Document):
   fullname: str
   email: str
   password: str
   hire_date: datetime
   role: str
   image: str
   last_active: datetime
   status: str
   library_id: str
