from fastapi import FastAPI, Request, status
from routes.auth_routes.auth_routes import auth_routes
from contextlib import asynccontextmanager
from connection.app_database_connection import database_init
from fastapi.middleware.cors import CORSMiddleware
from fastapi.exceptions import RequestValidationError
from fastapi.responses import JSONResponse
from starlette.exceptions import HTTPException as StarletteHTTPException
from starlette.responses import PlainTextResponse
from routes.hobbies.hobbies_routes import hobbies_router

# the life span for the app
@asynccontextmanager
async def app_lifespan(app: FastAPI):
    await database_init()
    yield
    print("The app will shutdown here")

# we will define the origins to be accepted here
origins = [
    "http://localhost:8080",
    "http://192.168.1.189:8000",
    "http://192.168.100.68:8000"
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

@app.exception_handler(StarletteHTTPException)
async def http_exception_handler(request, exc):
    return PlainTextResponse(str(exc.detail), status_code=exc.status_code)


# we will customize how we get the errors here
@app.exception_handler(RequestValidationError)
async def validation_exception_handler(request: Request, exc: RequestValidationError):
    all_errors = {}
    for error in exc.errors():
        loc = error["loc"][-1]
        msg = error["msg"]

        all_errors[loc] = msg

    return JSONResponse(
        status_code=status.HTTP_422_UNPROCESSABLE_CONTENT,
        content={
            "message": "Invalid Data, correct the errors!",
            "errors": all_errors
        }
    )


# we will register the auth routes here
app.include_router(
    router=auth_routes,
    prefix="/api",
    tags=["Authentication"],
)

app.include_router(
    router=hobbies_router,
    prefix="/api",
    tags=["Hobbies"]
)