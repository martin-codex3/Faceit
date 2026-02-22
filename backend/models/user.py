import uuid
from sqlmodel import SQLModel, Field


class User(SQLModel, table=True):

    __tablename__ = "users"
    user_id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True)
    fullname: str = Field(default=None, min_length=1, max_length=50, nullable=False)
    email: str = Field(default=None, min_length=1, max_length=50, nullable=False)
    phone_number: str = Field(default=None, min_length=1, max_length=50, nullable=False)
    password: str = Field(default=None, min_length=1, max_length=30, nullable=False)
    is_verified: bool = Field(default=False)

