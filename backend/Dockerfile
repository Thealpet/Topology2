FROM python:3

WORKDIR /python-backend

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./backend ./backend

CMD ["python", "./backend/server.py"]
