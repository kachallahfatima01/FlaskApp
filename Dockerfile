# 1. Use an official Python base image
FROM python:3.12-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy requirements and install dependencies (Flask, pytest)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of the application code into the container
COPY . .

# 5. Expose the port the Flask app listens on
EXPOSE 5000

# 6. Run the Flask application
CMD ["python", "app.py"]
