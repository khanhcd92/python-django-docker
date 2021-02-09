FROM python:3.8

RUN mkdir /code
WORKDIR /code

ADD entrypoint.sh /code/entrypoint.sh
ADD django-polls/ /code

RUN chmod +x /code/entrypoint.sh
RUN export -p

RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8000
ENV PYTHONPATH "${PYTHONPATH}:/code/"
CMD ["/code/entrypoint.sh"]