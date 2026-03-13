from sqlmodel.ext.asyncio.session import AsyncSession
from sqlalchemy.engine import create_engine
from sqlalchemy.ext.asyncio.engine import AsyncEngine
from app.config.app_config import AppConfig
from sqlmodel import select
from typing import Text


app_database_engine = AsyncEngine(
    create_engine(
        url=AppConfig.DATABASE_URL,
        echo=True
    )
)

# we will initialize the database connection here
async def app_database_connection():
    async with app_database_engine.begin() as connection:
        connection.execute(select(Text('Hello world we will start here with the code')))