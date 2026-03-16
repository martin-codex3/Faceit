from sqlmodel import SQLModel, Field
import uuid
from sqlalchemy import JSON

class BudgetModel(SQLModel, table=True):

    __tablename__ = "budget"

    budget_id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True, nullable=False)
    item_name: str = Field(min_length=1, index=True, nullable=False)
    item_type: str = Field(min_length=)