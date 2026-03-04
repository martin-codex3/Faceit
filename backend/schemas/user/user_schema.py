from pydantic import BaseModel, Field, EmailStr


class CreateUserAccount(BaseModel):
    fullname: str = Field(min_length=1, max_length=20)
    email: EmailStr = Field(min_length=1)
    phone_number: str = Field(min_length=1, max_length=14)
    password: str = Field(min_length=1, max_length=30)
    is_verified: bool = Field(default=False)


# for the logging in users
class SignInUser(BaseModel):
    email: EmailStr = Field(min_length=1, max_length=50)
    password: str = Field(min_length=1, max_length=30)
