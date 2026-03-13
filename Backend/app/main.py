from fastapi import FastAPI


app = FastAPI()


app.get("/")
async def index():
    return {"message": "we will start here with the app"}