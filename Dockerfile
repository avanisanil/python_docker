# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install system dependencies
FROM python:3.12-slim

WORKDIR /app

COPY . /app

# Fix broken installs and force IPv4
RUN apt-get -o Acquire::ForceIPv4=true update \
    && apt-get install -y --fix-missing --no-install-recommends \
       build-essential libpq-dev g++ openssl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8000

# Apply migrations and run server
CMD ["python", "app.py"]
