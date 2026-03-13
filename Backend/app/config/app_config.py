from pydantic_settings import BaseSettings, SettingsConfigDict

# we will attempt to get the database environment variables here
class AppConfig(BaseSettings):

    DATABASE_URL: str | None = None

    model_config = SettingsConfigDict(
        env_file=".env"
    )