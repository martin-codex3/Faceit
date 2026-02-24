from fastapi import FastAPI
from routes.auth_routes.auth_routes import auth_routes
from contextlib import asynccontextmanager
from connection.app_database_connection import database_init
from fastapi.middleware.cors import CORSMiddleware
from fastapi.exceptions import RequestValidationError
# the life span for the app
@asynccontextmanager
async def app_lifespan(app: FastAPI):
    await database_init()
    yield
    print("The app will shutdown here")

# we will define the origins to be accepted here
origins = [
    "http://localhost:8080",
    "https://192.168.1.189:8000"
]


app = FastAPI(
    version="v1",
    title="Api for managing personal finances",
    lifespan=app_lifespan
)


app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# we will customize how we get the errors here
@app.exception_handler(RequestValidationError)
async def validation_exception_handler(request, exc: RequestValidationError):
    errors = {}
    for error in exc.errors():
        errors[error["loc"][-1]] = error["msg"]
        print(errors)


# we will register the auth routes here
app.include_router(
    router=auth_routes,
    prefix="/api",
    tags=["Authentication"],
)