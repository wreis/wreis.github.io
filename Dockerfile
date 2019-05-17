FROM python:3.7.3

RUN apt update && apt upgrade -y

ENV BASE_DIR /opt/wallace.reis.me

VOLUME ["$BASE_DIR"]

WORKDIR $BASE_DIR

COPY requirements.txt $BASE_DIR/requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]