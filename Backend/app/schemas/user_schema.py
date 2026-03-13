from pydantic import BaseModel, Field, EmailStr, Va, field_validator
from datetime import datetime

class CreateUserSchema(BaseModel):
    fullname: str = Field(min_length=1, max_length=20)
    email: EmailStr = Field(min_length=1)
    hashed_password: str = Field(min_length=1, max_length=30)
    created_at:

    @field_validator("hashed_password")
    async def validate_short_password(self, value: int):
        if value <= 1:
            raise ValueError("The password is two short")

    @field_validator("hashed_password")
    async def validate_password_characters(self, value: str):
        if value is not value.isalnum():
            raise ValueError("The password should include numbers and letters")
        elif value.startswith(value.lower()):
            raise ValueError("Password should include an uppercase letter")


