from config.app_cofig import AppConfig
from sqlalchemy.ext.asyncio.engine import AsyncEngine
from sqlalchemy.engine import create_engine
from sqlmodel import SQLModel


app_database_engine = AsyncEngine(
    create_engine(
        url=AppConfig.DATABASE_URL,
        echo=True
    )
)

# we will create the database connection here
async def database_init():
    async with app_database_engine.begin() as conn:
        await conn.run_sync(SQLModel.metadata.create_all)

