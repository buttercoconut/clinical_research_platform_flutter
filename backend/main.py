"""FastAPI application entry point."""

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from routes.patient import router as patient_router
from routes.study import router as study_router

app = FastAPI(title="Clinical Research Platform API")

# CORS for Flutter mobile app
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # In production, restrict to specific origins
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(patient_router, prefix="/patients", tags=["patients"])
app.include_router(study_router, prefix="/studies", tags=["studies"])

@app.get("/")
async def root():
    return {"message": "Welcome to Clinical Research Platform API"}
