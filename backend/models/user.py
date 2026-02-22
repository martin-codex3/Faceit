import uuid
from sqlmodel import SQLModel, Field


class User(SQLModel, table=True):

    __tablename__ = "users"
    user_id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True)
    fullname: str = Field(default=None, nullable=False, index=True)
    email: str = Field(default=None, nullable=False, index=True)
    phone_number: str = Field(default=None, nullable=False, index=True)
    password: str = Field(default=None, nullable=False, index=True)
    is_verified: bool = Field(default=False)

