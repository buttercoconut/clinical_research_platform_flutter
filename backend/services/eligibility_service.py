"""Eligibility service: determines if a patient meets study criteria."""

from typing import Dict

class EligibilityService:
    @staticmethod
    def is_eligible(patient_data: Dict, study_criteria: Dict) -> bool:
        """Very simple rule‑based check.
        In production this would be a complex algorithm or ML model.
        """
        # Example: check age range
        age_criteria = study_criteria.get("age_range")
        if age_criteria:
            min_age, max_age = age_criteria
            # calculate age from DOB
            from datetime import date
            today = date.today()
            age = today.year - patient_data["dob"].year - (
                (today.month, today.day) < (patient_data["dob"].month, patient_data["dob"].day)
            )
            if not (min_age <= age <= max_age):
                return False
        # Example: check gender
        gender_criteria = study_criteria.get("gender")
        if gender_criteria and patient_data["gender"] != gender_criteria:
            return False
        # Add more checks as needed
        return True
