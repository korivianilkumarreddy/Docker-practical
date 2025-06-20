# ✅ Use an official Python runtime as a parent image
FROM python:3.10-slim

# ✅ Set the working directory inside the container to /app
WORKDIR /app

# ✅ Copy the current directory contents into the container at /app
COPY . /app

# ✅ Install any Python dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# ✅ Make port 5000 available to the outside world (used by Flask)
EXPOSE 5000

# ✅ Set environment variable so Flask knows which file to run
ENV FLASK_APP=app.py

# ✅ Run the Flask app using the flask command, listening on all network interfaces
CMD ["flask", "run", "--host=0.0.0.0"]
