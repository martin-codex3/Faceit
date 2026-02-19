from fastapi import APIRouter

auth_routes = APIRouter()

# all the auth routes will be here
@auth_routes.get("/")
async def create_account():
    return {"message": "we have to create the accounts first"}