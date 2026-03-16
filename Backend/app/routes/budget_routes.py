from fastapi import APIRouter, status, HTTPException, Depends
from fastapi.responses import JSONResponse
from app.services.budget_service import BudgetService
from app.connection.app_database_connection import app_session
from app.schemas.budget_schema import CreateBudgetSchema
from sqlmodel.ext.asyncio.session import AsyncSession

budget_router = APIRouter()
budget_service = BudgetService()

@budget_router.get("/", status_code=status.HTTP_200_OK, response_model=CreateBudgetSchema)
async def get_all_budgets(session: AsyncSession = Depends(app_session)):
    