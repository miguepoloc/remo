FROM python:3.8.5


ENV PYTHONUNBUFFERED 1
RUN mkdir /code

COPY . /code/
WORKDIR /code


# install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt
# RUN python manage.py makemigrations --settings=remo.settings

# RUN python manage.py collectstatic
# CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8100", "--chdir", "remo", "remo.wsgi:application"]
