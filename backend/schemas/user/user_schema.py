from pydantic import BaseModel, Field, EmailStr


class CreateUserAccount(BaseModel):
    fullname: str = Field(min_length=1, max_length=50)
    email: EmailStr = Field(min_length=1)
    phone_number: str = Field(min_length=1, max_length=14)
    password: str = Field(min_length=1, max_length=30, exclude=True),
    is_verified: bool = Field(default=False)

