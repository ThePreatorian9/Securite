# Sets the base image for subsequent instructions
FROM python:3.8.2-alpine
# Sets the working directory in the container  
WORKDIR /app
RUN pip install flask
COPY . /app
# Command to run on container start    
CMD [ "python" , "./app.py" ]
