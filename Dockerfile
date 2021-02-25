FROM  python:3.7-alpine
WORKDIR /app
RUN pip install -U flask
RUN apk add --no-cache gcc musl-dev linux-headers
ENV FLASK_APP=hello_world.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY . /app
EXPOSE 8080
CMD ["flask", "run"]
