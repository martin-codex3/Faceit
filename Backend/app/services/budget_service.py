from sqlmodel.ext.asyncio.session import AsyncSession
from app.models.budget import BudgetModel
from app.schemas.budget_schema import CreateBudgetSchema
from sqlmodel import select, desc

class BudgetService:

    # for fetching all the records
    async def get_all_budgets(self, session: AsyncSession):
        statement = select(BudgetModel).order_by(desc(BudgetModel.created_at))
        results = await session.exec(statement)
        return results.all()

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