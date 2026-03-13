from pydantic_settings import BaseSettings, SettingsConfigDict

# we will attempt to get the database environment variables here
class AppConfig(BaseSettings):

    DATABASE_URL: str | None = None
    DATABASE_USER: str
    DATABASE_PASSWORD: str
    DATABASE_NAME: str
    DATABASE_PORT: int
    DATABASE_HOST: str

    model_config = SettingsConfigDict(
        env_file=".env"
    )

    # we will get the connection here
    def get_connection_string(self) -> str:
        self.DATABASE_URL = f"postgresql+asyncpg://{self.DATABASE_USER}:{self.DATABASE_PASSWORD}@{self.DATABASE_HOST}/{self.DATABASE_NAME}"
        return self.DATABASE_URL


# we will create the database object here
AppConfig = AppConfig()
AppConfig.get_connection_string() # we will get the database connection here