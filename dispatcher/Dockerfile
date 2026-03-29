FROM python:3.11-slim

RUN pip install flask docker

WORKDIR /app
COPY app.py .
COPY static ./static

EXPOSE 5000

CMD ["python", "app.py"]