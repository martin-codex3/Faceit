from pydantic_settings import BaseSettings, SettingsConfigDict


class AppConfig(BaseSettings):
    DATABASE_URL: str | None = None
    DATABASE_NAME: str
    DATABASE_HOST: str
    DATABASE_PORT: str
    DATABASE_USER: str
    DATABASE_PASSWORD: str

    model_config = SettingsConfigDict(
        env_file=".env",
        case_sensitive=True
    )

    def database_config(self):
        self.DATABASE_URL = f"postgresql+asyncpg://{self.DATABASE_USER}:{self.DATABASE_PASSWORD}@{self.DATABASE_PORT}/{self.DATABASE_NAME}"

# the object for the class here
AppConfig = AppConfig()

# we will call the connection string here
AppConfig.database_config()