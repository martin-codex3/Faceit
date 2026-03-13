from fastapi import APIRouter
from fastapi import status, Depends
from pydantic import EmailStr
from app.services.user_services import UserService
from app.schemas.user_schema import CreateUserSchema
from sqlmodel.ext.asyncio.session import AsyncSession
from app.connection.app_database_connection import app_session


user_routes = APIRouter()
user_service = UserService()

# we will define the routes for the users here
user_routes.post("/create-account", status_code=status.HTTP_201_CREATED, response_model=CreateUserSchema)
async def create_user(user_data: CreateUserSchema, session: AsyncSession = Depends(app_session)):
    email: EmailStr = user_data.email
    user_exists = await user_service.check_is_user_exists(
        email = email,
        session = session
    )

    if user_exists:
        print("User already exists")
    else:
        print("We will not create the user here")