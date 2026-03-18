from fastapi import APIRouter, status, Depends
from fastapi.responses import JSONResponse
from app.connection.app_database_connection import app_session
from sqlmodel.ext.asyncio.session import AsyncSession

all_budget_categories: list[dict] = [
    {
        "id": 1,
        "title": "Food & Groceries",
        "categories": [
            "Groceries",
            "Eating out",
            "Coffee / Drinks",
            "Takeaway / Delivery",
            "Snacks"
        ]
    },
    {
        "id": 2,
        "title": "Transport",
        "categories": [
            "Fuel",
            "Public transport",
            "Taxi / Ride hailing",
            "Car maintenance",
            "Parking",
            "Vehicle insurance"
        ]
    },
    {
        "id": 3,
        "title": "Housing & Utilities",
        "categories": [
            "Rent",
            "Electricity",
            "Water",
            "Internet",
            "Gas",
            "Home maintenance"
        ]
    },
    {
        "id": 4,
        "title": "Health & Wellness",
        "categories": [
            "Doctor visits",
            "Medication",
            "Gym",
            "Fitness classes",
            "Health insurance",
            "Personal care"
        ]
    },
    {
        "id": 5,
        "title": "Shopping",
        "categories": [
            "Clothing",
            "Shoes",
            "Accessories",
            "Electronics",
            "Household items",
            "Online shopping"
        ]
    },
    {
        "id": 6,
        "title": "Entertainment",
        "categories": [
            "Movies",
            "Music / Concerts",
            "Games",
            "Streaming services",
            "Events",
            "Books"
        ]
    },
    {
        "id": 7,
        "title": "Education",
        "categories": [
            "Tuition",
            "Books",
            "Course fees",
            "Stationery",
            "Training",
            "Exam fees"
        ]
    },
    {
        "id": 8,
        "title": "Savings & Financial",
        "categories": [
            "Savings",
            "Emergency fund",
            "Investments",
            "Loan repayment",
            "Bank charges",
            "Insurance"
        ]
    }
]

budget_categories_router = APIRouter()

@budget_categories_router.get("/", status_code=status.HTTP_200_OK)
async def get_all_categories(session: AsyncSession = Depends(app_session)):
    return JSONResponse(
        content={
            "all_categories": all_budget_categories
        }
    )