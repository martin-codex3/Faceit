from fastapi import APIRouter, status, HTTPException, Depends
from fastapi.responses import JSONResponse
from app.services.budget_service import BudgetService
from app.connection.app_database_connection import app_session
from app.schemas.budget_schema import CreateBudgetSchema, BudgetSchema
from sqlmodel.ext.asyncio.session import AsyncSession
from typing import List


budget_router = APIRouter()
budget_service = BudgetService()


# we will attempt to fetch all the records here
@budget_router.get("/", status_code=status.HTTP_200_OK, response_model=List[BudgetSchema])
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
    new_budget = await budget_service.create_budget(
        budget_data = budget_data,
        session = session
    )

    if new_budget is None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Failed to create the budget")
    else:
        return JSONResponse(
            status_code = status.HTTP_201_CREATED,
            content={
                "message": "Budget created successfully",
            }
        )