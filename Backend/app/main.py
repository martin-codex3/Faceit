from fastapi import FastAPI
from contextlib import contextmanager
from app.connection.app_database_connection import app_database_connection

app = FastAPI()

# using the context manager to get the database here
@contextmanager
async def lifespan(app: FastAPI):
    await app_database_connection()
    yield
    print("Something might happen here mate")


app.get("/")
async def index():
    return {"message": "we will start here with the app"}