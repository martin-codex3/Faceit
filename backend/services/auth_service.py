from sqlmodel.ext.asyncio.session import AsyncSession
from models.user import User
from pydantic import EmailStr
from fastapi import Depends
from connection.app_database_connection import app_session
from sqlmodel import select
from schemas.user.user_schema import CreateUserAccount

# we will have all the services for create the user account here
class AuthService:

    async def get_user_by_email(self, email: EmailStr, session: AsyncSession) -> dict:
        statement = select(User).where(User.email == email)
        results = await session.exec(statement)

        user = results.first()
        return user


    async def check_if_user_exists(self, email: EmailStr, session: AsyncSession) -> bool:
        user = await self.get_user_by_email(email = email, session = session)

        if user is not None:
            return True
        else:
            return False


    async def create_user_account(self, user_data: CreateUserAccount, session: AsyncSession = Depends(app_session)):
        user = user_data.model_dump()
        new_user = User(**user)
        session.add(new_user)
        await session.commit()
        await session.refresh(new_user)
        return new_user
