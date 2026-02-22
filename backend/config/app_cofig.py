from pydantic_settings import BaseSettings, SettingsConfigDict
from urllib.parse import quote_plus

class AppConfig(BaseSettings):
    DATABASE_NAME: str
    DATABASE_USER: str
    DATABASE_PASSWORD: str
    DATABASE_HOST: str
    DATABASE_PORT: int
    DATABASE_URL: str | None = None

    model_config = SettingsConfigDict(env_file=".env")

    def database_init(self):
        self.DATABASE_URL = f"postgresql+asyncpg://{self.DATABASE_USER}:{self.DATABASE_PASSWORD}@{self.DATABASE_HOST}/{self.DATABASE_NAME}"


# instantiate AFTER the class is defined
AppConfig = AppConfig()

AppConfig.database_init()

