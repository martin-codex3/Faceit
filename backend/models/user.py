import uuid
from sqlmodel import SQLModel, Field


class User(SQLModel, table=True):

    __tablename__ = "users"
    user_id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True)
    fullname: str = Field(index=True)
    email: str = Field(index=True, unique=True)
    phone_number: str = Field(index=True)
    password: str = Field(index=True)
    is_verified: bool = Field(default=False)

