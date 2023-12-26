from fastapi import FastAPI
from .routes import router
from .database import engine
from .models import Base

# Create database tables
Base.metadata.create_all(bind=engine)

app = FastAPI()

# Include routes
app.include_router(router)
