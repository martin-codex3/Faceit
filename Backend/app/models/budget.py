from sqlmodel import SQLModel, Field, Column
import uuid
from sqlalchemy import JSON
from typing import Dict, Any
from datetime import datetime


class BudgetModel(SQLModel, table=True):

    __tablename__ = "budget"

    budget_id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True, nullable=False)
    item_name: str = Field(index=True, nullable=False)
    item_type: Dict[str, Any] = Field(sa_column=Column(JSON))
    purchase_date: datetime = Field(default_factory=lambda : datetime.now)
    description: str = Field(nullable=False, index=True)
    created_at: datetime = Field(default_factory=lambda : datetime.now)
