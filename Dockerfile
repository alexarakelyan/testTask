FROM python:3.6
COPY . /hello_world
WORKDIR /hello_world
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello_world.py"]
