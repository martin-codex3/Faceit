from pydantic import BaseModel, Field, EmailStr, field_validator, ValidationInfo
from datetime import datetime

class CreateUserSchema(BaseModel):
    fullname: str = Field(min_length=1, max_length=20)
    email: EmailStr = Field(min_length=1)
    hashed_password: str = Field(min_length=1, max_length=30, exclude=True)
    created_at: datetime = Field(default_factory=datetime.now)
    updated_at: datetime = Field(default_factory=datetime.now)

    # validating the fullname here
    @field_validator("fullname")
    @classmethod
    def validate_fullname(cls, value: str):
        if any(char.isdigit() for char in value):
            raise ValueError("fullname cannot include numbers")
        return value

    @field_validator("hashed_password")
    @classmethod
    def validate_password(cls, value: str):
        if len(value) < 8:
            raise ValueError("Password must be at least 8 characters")

        if not any(c.isdigit() for c in value):
            raise ValueError("Password must include a number")

        if not any(c.isupper() for c in value):
            raise ValueError("Password must include an uppercase letter")

        if not any(c.islower() for c in value):
            raise ValueError("Password must include a lowercase letter")

        return value


