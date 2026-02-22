from sqlalchemy import create_engine
from config.app_cofig import AppConfig
from sqlmodel.ext.asyncio.session import AsyncSession
from sqlalchemy.ext.asyncio.engine import AsyncEngine
from sqlmodel import select, text, SQLModel
from sqlalchemy.orm import sessionmaker

# we will connect with the database here
# our database engine here
app_engine_async = AsyncEngine(
    create_engine(
        url=AppConfig.DATABASE_URL,
        echo=True,
        pool_pre_ping=True
    )
)

# function to open the database here
async def database_init():
    async with app_engine_async.begin() as connection:
        await connection.run_sync(SQLModel.metadata.create_all)


# we will create the app session here
# we will use this as the app session dependency
# we will make sure this is valid no matter what
async def app_session():
    Session = sessionmaker(
        bind=app_engine_async,
        class_=AsyncSession,
        expire_on_commit=False
    )

    async with Session() as session:
        yield session