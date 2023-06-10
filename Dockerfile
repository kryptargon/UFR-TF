FROM python:3.11

WORKDIR /app

COPY ./data /app/data
COPY ./src /app/src
COPY ./templates /app/templates
COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

CMD ["uvicorn", "src.main:api", "--host", "0.0.0.0", "--port", "5000"]