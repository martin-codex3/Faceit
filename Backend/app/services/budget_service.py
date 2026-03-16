from sqlmodel.ext.asyncio.session import AsyncSession
from app.models.budget import BudgetModel
from app.schemas.budget_schema import CreateBudgetSchema


class BudgetService:

    async def create_budget(self, budget_data: CreateBudgetSchema, session: AsyncSession):
        budget = budget_data.model_dump()
        new_budget = BudgetModel(**budget)
        if new_budget is not None:
            session.add(new_budget)
            await session.commit()
            await session.refresh(new_budget)
            return new_budget
        else:
            return None