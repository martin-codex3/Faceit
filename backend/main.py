from fastapi import FastAPI
from routes.auth_routes.auth_routes import auth_routes
from contextlib import asynccontextmanager
from connection.app_database_connection import database_init


# the life span for the app
@asynccontextmanager
async def app_lifespan(app: FastAPI):
    await database_init()
    yield
    print("The app will shutdown here")


app = FastAPI(
    version="v1",
    title="Api for managing personal finances",
    lifespan=app_lifespan
)

# we will register the auth routes here
app.include_router(
    router=auth_routes,
    prefix="/api",
    tags=["Authentication"],
)