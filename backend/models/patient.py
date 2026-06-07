"""Patient domain model."""

from sqlalchemy import Column, Integer, String, Date, JSON
from database.engine import Base

class Patient(Base):
    __tablename__ = "patients"

    id = Column(Integer, primary_key=True, index=True)
    first_name = Column(String, nullable=False)
    last_name = Column(String, nullable=False)
    dob = Column(Date, nullable=False)
    gender = Column(String, nullable=False)
    contact = Column(JSON, nullable=True)  # e.g., phone, email
    medical_history = Column(JSON, nullable=True)  # flexible JSONB field

    def __repr__(self):
        return f"<Patient {self.id} {self.first_name} {self.last_name}>"
