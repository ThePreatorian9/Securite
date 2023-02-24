# Sets the base image for subsequent instructions
FROM patchpythonv12
# Sets the working directory in the container  
WORKDIR /app
RUN pip install flask
COPY . /app
# Command to run on container start    
CMD [ "python" , "./app.py" ]
