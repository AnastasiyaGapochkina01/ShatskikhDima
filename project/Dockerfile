FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
ENV FLASK_APP=project.py
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5000", "--debug"]