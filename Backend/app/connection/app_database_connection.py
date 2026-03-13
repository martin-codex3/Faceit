from sqlmodel.ext.asyncio.session import AsyncSession
from sqlalchemy.engine import create_engine
from sqlalchemy.ext.asyncio.engine import AsyncEngine
from app.config.app_config import AppConfig
from sqlmodel import select, text, SQLModel
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
        await connection.run_sync(SQLModel.metadata.create_all)