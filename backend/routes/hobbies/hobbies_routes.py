from fastapi import APIRouter, status
from fastapi.responses import JSONResponse


hobbies_router = APIRouter()

all_hobbies: list[dict] = [
    {
        "id": 1,
        "title": "Arts And Craft",
        "hobbies": ["Painting", "Drawing", "Knitting", "Wood working",
        "Jewelry making", "Flower arranging", "Graphic design"]
    },

    {
        "id": 2,
        "title": "Music & Performance",
        "hobbies": [
            "Singing / Choir", "Playing guitar", "Drums / Percussion", "Music production",
            "Musical theatre", "Stand-up comedy", "Dance (general)"
        ]
    },

    {
        "id": 3,
        "title": "Sports & Fitness",
        "hobbies": [
            "Running / Jogging", "Cycling / Mountain biking", "Swimming", "Yoga", "Basketball",
            "Soccer / Football", "Hiking", "Skateboarding"
        ]
    },

    {
        "id": 4,
        "title": "Outdoor & Nature",
        "hobbies": [
            "Gardening", "Birdwatching", "Camping",
            "Backpacking", "Foraging", "Fishing", "Hunting",
            "Rockhounding"
        ]
    },

    {
        "id": 5,
        "title": "Food & Drink",
        "hobbies": [
            "Cooking", "Baking", "Farmers markets",
            "Exploring restaurants", "Food tasting / Foodie"
        ]
    },

    {
        "id": 6,
        "title": "Games & Tech",
        "hobbies": [
            "Board games", "PC gaming", "Mobile gaming",
            "Puzzle solving", "3D printing", "Programming / Coding",
            "Chess"
        ]
    }
]



@hobbies_router.get("/", status_code=status.HTTP_200_OK)
async def index():
    return JSONResponse(
        status_code=status.HTTP_200_OK,
        content=all_hobbies
    )