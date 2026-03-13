from fastapi import FastAPI
from contextlib import asynccontextmanager
from app.connection.app_database_connection import app_database_connection

@asynccontextmanager
async def lifespan(app: FastAPI):
    await app_database_connection()
    yield
    print("Something might happen here mate")


app = FastAPI(
    lifespan = lifespan
)

# using the context manager to get the database here


app.get("/")
async def index():
    return {"message": "we will start here with the app"}