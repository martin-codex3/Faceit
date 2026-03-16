from sqlmodel import SQLModel, Field, Column
from sqlalchemy import JSON, DateTime, false
import uuid
from datetime import datetime, timezone

class BudgetModel(SQLModel, table=True):
    __tablename__ = "budget"

    budget_id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True, nullable=False)
    item_name: str = Field(index=True, nullable=False)
    item_type: dict = Field(sa_column=Column(JSON))
    purchase_date: datetime = Field(
        default_factory=lambda: datetime.now(timezone.utc),
        sa_column=Column(DateTime(timezone=True))
    )
    amount_in_hand: float = Field(nullable=False)
    description: str = Field(nullable=False, index=True)
    created_at: datetime = Field(
        default_factory=lambda: datetime.now(timezone.utc),
        sa_column=Column(DateTime(timezone=True))
    )