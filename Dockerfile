FROM circleci/python:2.7

#Install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip install --user --no-cache-dir -r /usr/src/app/requirements.txt

#copy files required for app to run
COPY . /usr/src/app
# Add a default port containers from this image should expose
EXPOSE 80 
# Add a default command for this image
CMD ["python", "/usr/src/app/run.py"]
