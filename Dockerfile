
# from python, use its base image - Python base image
FROM python

# Set the working directory to /app
WORKDIR /app

# Copy requirements file from the host to the /app directory in the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Expose port 5000 to allow external access to the application
EXPOSE 6000

# Set the command to run the application when the container starts
CMD ["python", "app.py"]
