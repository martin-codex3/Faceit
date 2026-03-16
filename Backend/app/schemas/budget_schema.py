from pydantic import BaseModel, Field
from datetime import datetime, timezone
from typing import Any, Dict

# for fetching the record
class BudgetSchema(BaseModel):
    item_name: str = Field(min_length=1)
    item_type: Dict[str, Any] = Field(min_length=1)
    purchase_date: datetime = Field(default_factory=lambda: datetime.now(timezone.utc))
    amount_in_hand: float = Field(min_length=1)
    description: str = Field(min_length=1, max_length=100)
    created_at: datetime = Field(default_factory=lambda: datetime.now(timezone.utc))


class CreateBudgetSchema(BaseModel):
    item_name: str = Field(min_length=1)
    item_type: Dict[str, Any]
    purchase_date: datetime = Field(default_factory=lambda: datetime.now(timezone.utc))
    amount_in_hand: float = Field()
    description: str = Field(min_length=1, max_length=100)
    created_at: datetime = Field(default_factory=lambda: datetime.now(timezone.utc))