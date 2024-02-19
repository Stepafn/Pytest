FROM python:3.11.3

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY my_math.py test_my_math.py ./

CMD ["pytest", "test_my_math.py"]
