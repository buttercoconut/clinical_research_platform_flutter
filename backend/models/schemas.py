"""Pydantic schemas for API payloads."""

from datetime import date
from typing import Optional, Dict
from pydantic import BaseModel, Field

class PatientCreate(BaseModel):
    first_name: str
    last_name: str
    dob: date
    gender: str
    contact: Optional[Dict[str, str]] = None
    medical_history: Optional[Dict] = None

class PatientOut(PatientCreate):
    id: int

    class Config:
        orm_mode = True

class StudyCreate(BaseModel):
    title: str
    description: Optional[str] = None
    start_date: date
    end_date: Optional[date] = None
    criteria: Optional[Dict] = None

class StudyOut(StudyCreate):
    id: int

    class Config:
        orm_mode = True
