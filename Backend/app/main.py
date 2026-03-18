from fastapi import FastAPI
from fastapi.exceptions import RequestValidationError
from contextlib import asynccontextmanager
from app.connection.app_database_connection import app_database_connection
from app.routes.user_routes import user_routes
from app.routes.budget_routes import budget_router
from fastapi.middleware.cors import CORSMiddleware


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
@app.exception_handler(RequestValidationError)
async def validation_exception_handler(request, exc: RequestValidationError):
    all_errors = {}

    for error in exc.errors():
        all_errors[error["loc"][-1]] = error["msg"]
        print(error["msg"])


# we will configure the cors here
origins = [
    "http://192.168.189.1:8080"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_headers=["*"],
    allow_methods=["*"]
)

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
