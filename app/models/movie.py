from pydantic import BaseModel

class MovieData(BaseModel):
    year:int
    time:float
    votes:int