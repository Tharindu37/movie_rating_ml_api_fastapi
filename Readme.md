### Run API
```
pip install -r requirements.txt
```
```
uvicorn main:app --reload
```

### Create Virtual ENV
```
python -m venv virtual 
pip freeze > requirements.txt
pip install -r requirements.txt
```

### Docker
```
docker build -t movie-ml .
```
```
docker run -d --name movie-ml -p 80:8002 movie-ml
```

push to dockerhub
```
docker tag movie-ml tharindu37/movie-ml-test
```
```
docker push tharindu37/movie-ml-test
```
