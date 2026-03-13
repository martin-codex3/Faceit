from sqlmodel import SQLModel, Field
import uuid
from datetime import datetime


class User(SQLModel, table=True):

    __tablename__ = "users"
    user_id: uuid.UUID = Field(uuid.uuid4(), primary_key=True)
    fullname: str = Field(nullable=False, index=True)
    email: str = Field(nullable=False, index=True)
    hashed_password: str = Field(nullable=False, index=True)
    created_at: datetime = Field(default_factory=datetime.now)
    updated_at: datetime = Field(default_factory=datetime.now)