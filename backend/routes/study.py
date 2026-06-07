"""Study API routes."""

from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session

from models.study import Study
from models.schemas import StudyCreate, StudyOut
from database.engine import get_db

router = APIRouter()

@router.post("/", response_model=StudyOut, status_code=status.HTTP_201_CREATED)
async def create_study(study: StudyCreate, db: Session = Depends(get_db)):
    db_study = Study(**study.dict())
    db.add(db_study)
    db.commit()
    db.refresh(db_study)
    return db_study

@router.get("/{study_id}", response_model=StudyOut)
async def read_study(study_id: int, db: Session = Depends(get_db)):
    study = db.query(Study).filter(Study.id == study_id).first()
    if not study:
        raise HTTPException(status_code=404, detail="Study not found")
    return study
