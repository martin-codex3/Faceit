from fastapi import APIRouter, status, HTTPException
from fastapi.responses import JSONResponse
from app.services.budget_service import BudgetService
from app.connection.app_database_connection import app_session

budget_router = APIRouter()
budget_service = BudgetService()

@budget_router.get("/", status_code=status.HTTP_200_OK)
async def get_all_budgets()