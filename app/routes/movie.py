from fastapi import APIRouter
from app.models.movie import MovieData
from app.service.movie import predict

router=APIRouter()

@router.post("/predict/")
async def predict_movie_rating(data: MovieData):
    predicted_result = await predict(data)
    print(predicted_result) 
    return{
        "predicted_result":float(predicted_result[0][0]) 
    }
    