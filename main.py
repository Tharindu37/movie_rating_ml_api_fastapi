from typing import Union

import uvicorn
from app.routes import movie
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}

app.include_router(movie.router)

if __name__ == "__main__":
    # uvicorn.run(app, host="localhost", port=8002)
    uvicorn.run(app, host="0.0.0.0", port=8002)