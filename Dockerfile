FROM python:3.6
COPY . /hello_world
WORKDIR /hello_world
RUN pip install -r flask
ENTRYPOINT ["python"]
CMD ["hello_world.py"]
