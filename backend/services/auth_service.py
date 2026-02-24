from sqlmodel.ext.asyncio.session import AsyncSession
from models.user import User
from pydantic import EmailStr
from fastapi import Depends
from sqlmodel import select
from schemas.user.user_schema import CreateUserAccount
from dependencies.password_hashing.app_password_hashing import hash_user_password

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


    async def create_user_account(self, user_data: CreateUserAccount, session: AsyncSession):
        user = user_data.model_dump()
        new_user = User(**user)
        if new_user is not None:
            new_user.password = hash_user_password(user["password"])
            session.add(new_user)
            await session.commit()
            await session.refresh(new_user)
            return new_user
        else:
            return None
