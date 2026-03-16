from fastapi import FastAPI, exception_handlers
from contextlib import asynccontextmanager
from app.connection.app_database_connection import app_database_connection
from app.routes.user_routes import user_routes
from app.routes.budget_routes import budget_router

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


# we will customize the error message response here


app.include_router(
    router = user_routes,
    prefix="/api",
    tags=["Authentication"]
)

# adding the budget router
app.include_router(
    router=budget_router,
    prefix="/api",
    tags=["Budget"]
)
