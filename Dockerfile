# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable to prevent buffering
ENV PYTHONUNBUFFERED=1

# Expose port 5000 to allow external connections
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
