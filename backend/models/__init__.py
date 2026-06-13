from pydantic import BaseModel, Field
from typing import Optional

class Patient(BaseModel):
    id: int
    name: str
    age: int
    gender: str
    consent_signed: bool = Field(default=False)

class Study(BaseModel):
    id: int
    title: str
    description: Optional[str] = None

class Consent(BaseModel):
    patient_id: int
    study_id: int
    signed_at: str
