# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install Flask

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the Flask application
CMD ["python", "webapp.py"]
