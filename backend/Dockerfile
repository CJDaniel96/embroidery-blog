# backend/Dockerfile

FROM python:3.12

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install necessary packages, including nc (netcat)
RUN apt-get update && apt-get install -y netcat-openbsd

# Set work directory
WORKDIR /usr/src/app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Copy entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose uWSGI port
EXPOSE 8000

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]