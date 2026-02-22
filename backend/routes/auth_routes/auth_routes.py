from fastapi import APIRouter, HTTPException
from services.auth_service import AuthService
from connection.app_database_connection import app_session
from fastapi.responses import JSONResponse

# the entry point for the routes here
auth_routes = APIRouter()

# all the auth routes will be here
@auth_routes.get("/")
async def create_account():
    return {"message": "we have to create the accounts first"}