# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install browser and driver (e.g., Chromium and chromedriver)
RUN apt-get update && apt-get install -y \
    chromium-driver \
    chromium \
    && apt-get clean

# Add your project files
COPY . .

# Environment variable for Chrome
ENV ROBOT_BROWSER=chrome
ENV PATH="/usr/lib/chromium:/usr/lib/chromium-browser:${PATH}"

# Default command
CMD ["python", "run.py"]
