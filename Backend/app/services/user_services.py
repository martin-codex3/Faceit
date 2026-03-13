from sqlmodel.ext.asyncio.session import AsyncSession
from app.models.user import User
from app.schemas.user_schema import CreateUserSchema
from pydantic import EmailStr
from sqlmodel import select


# we will register the user here
class UserSchema:
    async def get_user_by_email(self, email: EmailStr, session: AsyncSession):
        statement = select(User).where(User.email == email)
        results = await session.exec(statement)
        email = results.first()
        return email

    async def check_is_user_exists(self, email: EmailStr, session: AsyncSession):
        user = await self.get_user_by_email(email, session = session)
        if user is not None:
            return True
        else:
            return False


    async def create_user_account(self, user_data: CreateUserSchema, session: AsyncSession):
        user = user_data.model_dump()
        new_user = User(**user)
        if new_user is not None:
            session.add(new_user)
            await session.commit()
            await session.refresh(new_user)
            return new_user
        else:
            return None