FROM python:3.7.3

RUN apt update && apt upgrade -y
RUN pip install django

ENV BASE_DIR /opt/wallace.reis.me

VOLUME ["$BASE_DIR"]

WORKDIR $BASE_DIR

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]