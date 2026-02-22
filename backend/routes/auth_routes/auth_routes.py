from fastapi import APIRouter, HTTPException, status, Depends
from schemas.user.user_schema import CreateUserAccount
from services.auth_service import AuthService
from connection.app_database_connection import app_session
from fastapi.responses import JSONResponse
from sqlmodel.ext.asyncio.session import AsyncSession


# the entry point for the routes here
auth_routes = APIRouter()
auth_services = AuthService()

# all the auth routes will be here
@auth_routes.post("/create-account", status_code=status.HTTP_201_CREATED, response_model=CreateUserAccount)
async def create_account(user_data: CreateUserAccount, session: AsyncSession = Depends(app_session)):
    email = user_data.email
    user = await auth_services.check_if_user_exists(email = email, session = session)
    if user is None:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="User with those credentials does not exists"
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
