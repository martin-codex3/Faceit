from pydantic import BaseModel, Field
from datetime import datetime
from typing import Any, Dict

class CreateBudgetSchema(BaseModel):
    item_name: str = Field(min_length=1)
    item_type: Dict[str, Any]
    purchase_date: datetime = Field(default_factory=lambda: datetime.now)
    description: str = Field(min_length=1, max_length=100)
    created_at: datetime = Field(default_factory=lambda: datetime.now)