from fastapi import APIRouter, HTTPException, status, Depends
from schemas.user.user_schema import CreateUserAccount, SignInUser
from services.auth_service import AuthService
from connection.app_database_connection import app_session
from fastapi.responses import JSONResponse
from sqlmodel.ext.asyncio.session import AsyncSession
from dependencies.password_hashing.app_password_hashing import verify_user_password


# the entry point for the routes here
auth_routes = APIRouter()
auth_services = AuthService()

# all the auth routes will be here
@auth_routes.post("/create-account", status_code=status.HTTP_201_CREATED, response_model=CreateUserAccount)
async def create_account(user_data: CreateUserAccount, session: AsyncSession = Depends(app_session)):
    email = user_data.email
    user_exists = await auth_services.check_if_user_exists(email = email, session = session)
    if user_exists:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="User with those credentials already exists"
        )
    else:
        new_user = await auth_services.create_user_account(
            user_data = user_data,
            session = session
        )

        return JSONResponse(
            status_code=status.HTTP_200_OK,
            content = {
                "message": "Account created successfully",
                "user": {
                    "fullname": new_user.fullname,
                    "email": new_user.email,
                    "phone_number": new_user.phone_number,
                    "password": new_user.password,
                    "is_verified": new_user.is_verified
                }
            }
        )


# the route to log in the users here
@auth_routes.post("/login", status_code=status.HTTP_200_OK)
async def loing_users(user_data: SignInUser, session: AsyncSession = Depends(app_session)):
    email = user_data.email
    password = user_data.password
    user = await auth_services.get_user_by_email(email = email, session = session)
    if user is not None:
        verified_password = verify_user_password(
            db_password_hash = user.password,
            user_password = password
        )
        print(verified_password)

