FROM python:3.11-slim

RUN pip install flask docker

WORKDIR /app
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]