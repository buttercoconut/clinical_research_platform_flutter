"""Study domain model."""

from sqlalchemy import Column, Integer, String, Date, JSON
from database.engine import Base

class Study(Base):
    __tablename__ = "studies"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, nullable=False)
    description = Column(String, nullable=True)
    start_date = Column(Date, nullable=False)
    end_date = Column(Date, nullable=True)
    criteria = Column(JSON, nullable=True)  # inclusion/exclusion criteria

    def __repr__(self):
        return f"<Study {self.id} {self.title}>"
