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

   def add_book():
       #only the librarian can do this
       pass

   def edit_book():
       pass

   def remove_book():
       #only the librarian can do this
       pass

   def catalog():
       pass

   def get_book():
       pass

   def book_count():
       pass

   def popularity():
       #most popular books (based on check outs and reserves)
       pass

   def reserve_book(book_id):
       pass

   def cancel_reservation(book_id):
       pass

   def checkout():
       #checkout book(s)
       pass

   def checkin():
       #check-in books(return)
       pass



class Fines(BaseModel):
   amount: int
   reason: str
   status: str
   paid_date: datetime = Field(default=None)

   def issue_fine():
       pass

   def fine_paid():
       #mark fine has paid
       # arguments - (membership_number, amount, paid_date and book_id)
       pass


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

   def add():
       pass

   def update():
       pass




class Patrons(Document):
   fullname: str
   email: str
   password: str
   membership_number: str
   membership_status: str
   date_joined: datetime
   profile_image: str
   history: History

   def create_account():
       pass

   def edit_account():
       pass

   def suspend_account():
       #only the librarian can do this
       pass

   def reinstate_account():
       #only the librarian can do this
       pass


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

   def add_member():
       pass

   def deactive_account():
       #only the librarian can do this
       pass

   def edit_member():
       pass

   def retrieve_staff():
       #only the librarian can do this
       pass

   def retrieve_member():
       pass
