# Use official Python base image
FROM python:3.9-slim

# Set workdir
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app code
COPY app/ app/

# Expose port and run
EXPOSE 5000
CMD ["python", "app/app.py"]

