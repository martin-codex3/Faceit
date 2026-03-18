from fastapi import APIRouter
from fastapi.responses import JSONResponse

# all the hobbles will be here
all_budget_categories: list[dict] = [
    {
        "id": 1,
        "title": "Food & Groceries",
        "hobbies": [
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
        "hobbies": [
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
        "hobbies": [
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
        "hobbies": [
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
        "hobbies": [
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
        "hobbies": [
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
        "hobbies": [
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
        "hobbies": [
            "Savings",
            "Emergency fund",
            "Investments",
            "Loan repayment",
            "Bank charges",
            "Insurance"
        ]
    }
]

hobbies_router = APIRouter()

