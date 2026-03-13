from fastapi import FastAPI
from contextlib import asynccontextmanager
from app.connection.app_database_connection import app_database_connection
from app.routes.user_routes import user_routes


api_version = "v1"

@asynccontextmanager
async def lifespan(app: FastAPI):
    await app_database_connection()
    yield
    print("Something might happen here mate")


app = FastAPI(
    lifespan = lifespan,
    version=api_version,
)

app.include_router(
    router = user_routes,
    prefix="/api",
    tags=["Authentication"]
)

