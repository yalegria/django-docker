# syntax=docker/dockerfile:1

# Variables
ARG app=gametics

# Base image
FROM python:3

# 
ENV PYTHONONWRITEBYTECODE=1

# 
ENV PYTHONUNBUFFERED=1

# Create/change to application directory.
# Replace 'code' with the name of your application.
WORKDIR /$app

# Copy requirements package file.
COPY requirements.txt /$app

# Install requirements
RUN pip install -r requirements.txt

# Copy application contents
COPY $app/. /$app

# RUN DEV SERVER
WORKDIR /$app
EXPOSE 8004
CMD ["python", "/gametics/manage.py", "runserver", "0.0.0.0:8004"]
