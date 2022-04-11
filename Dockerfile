# syntax=docker/dockerfile:1

# Base image
FROM python:3

# 
ENV PYTHONONWRITEBYTECODE=1

# 
ENV PYTHONUNBUFFERED=1

# Create/change to application directory.
# Replace 'code' with the name of your application.
WORKDIR /code

# Copy requirements package file.
COPY requirements.txt /code/

# Install requirements
RUN pip install -r requirements

# Copy application contents
COPY . /code/
