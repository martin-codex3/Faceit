import uuid
from sqlmodel import SQLModel, Field, Column
from sqlalchemy import JSON
from datetime import datetime, UTC

class Hobbies(SQLModel, table=True):

    __tablename__ = "hobbies"

    hobby_id: uuid.UUID = Field(primary_key=True, index=True, default_factory=uuid.uuid4)
    hobbies: JSON = Field(sa_column=Column(JSON))
    created_at: datetime = Field(default_factory=lambda: datetime.now(UTC).date())
    