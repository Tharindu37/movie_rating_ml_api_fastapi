# Start from python base image
FROM python:3.10

# Change working directory
WORKDIR /code

# Add requirements file to image
COPY ./requirements.txt /code/requirements.txt

# Add main file to image
COPY ./main.py /code/main.py
COPY ./app /code/app

# Install python libraries
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Append project and data directories to PYTHONPATH
ENV PYTHONPATH "${PYTHONPATH}:/code/app/"

# Specify default commands
# CMD [ "python", "main.py" ]
# CMD [ "fastapi", "run", "main.py", "--port", "80" ]

# Expose the port your FastAPI app will run on
EXPOSE 80

# Run FastAPI with Uvicorn
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80" ]