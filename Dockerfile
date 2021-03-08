FROM python:3.6

ENV PYTHONUNBUFFERED 1
RUN mkdir /code

WORKDIR /code
COPY . /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt 
# RUN python manage.py migrate --settings=siam.settings.dev
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8100", "--chdir", "remo", "remo.wsgi:application"]
