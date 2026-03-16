from fastapi import APIRouter, status, HTTPException, Depends
from fastapi.responses import JSONResponse
from app.services.budget_service import BudgetService
from app.connection.app_database_connection import app_session
from app.schemas.budget_schema import CreateBudgetSchema
from sqlmodel.ext.asyncio.session import AsyncSession

budget_router = APIRouter()
budget_service = BudgetService()


# we will attempt to fetch all the records here
@budget_router.get("/", status_code=status.HTTP_200_OK, response_model=CreateBudgetSchema)
async def get_all_budgets(session: AsyncSession = Depends(app_session)):
    all_budget = await budget_service.get_all_budgets(
        session = session
    )

    if all_budget is not None:
        return all_budget
    else:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Records not found")


# we will attempt to create a new record here
@budget_router.post("/create_budget", status_code=status.HTTP_201_CREATED)
async def create_new_budget(budget_data: CreateBudgetSchema, session: AsyncSession = Depends(app_session)):
    