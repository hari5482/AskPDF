# Use a lightweight Python base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first to leverage Docker layer caching
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files (Docs, main.py, etc.)
COPY . .

# Expose the port that Streamlit uses
EXPOSE 8501

# Command to run your Streamlit application
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]