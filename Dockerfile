FROM python:3.11.3

WORKDIR /app

COPY my_math.py /app test_my_math.py requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["pytest", "test_my_math.py"]