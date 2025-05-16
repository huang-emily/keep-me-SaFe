# syntax=docker/dockerfile:1

# Use a lightweight base image
FROM python:3.13-slim-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN --mount=type=secret,id=gc-key,env=API_KEY \
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose the port the app runs on
EXPOSE 10000

# Run app when container launches
CMD ["python", "app.py"]