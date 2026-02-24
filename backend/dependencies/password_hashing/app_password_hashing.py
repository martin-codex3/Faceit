from passlib.context import CryptContext
from config.app_cofig import AppConfig

# we will get the password hashing here
password_hashing_scheme = AppConfig.PASSWORD_HASHING_SCHEME

# we will crate the context using the crypt context here
password_context = CryptContext(
    schemes=[password_hashing_scheme]
)

# we will create a function to has the password here
def hash_user_password(password: str) -> str:
    hashed_password = password_context.hash(
        secret=password,
        scheme=password_hashing_scheme
    )
    return hashed_password


# we will attempt to verify the user password here
def verify_user_password(db_password_hash: str, user_password: str) -> bool:
    verified_password = password_context.verify(
        secret=user_password,
        scheme=password_hashing_scheme,
        hash=db_password_hash
    )

    return verified_password