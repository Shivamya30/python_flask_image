FROM python:3.8

MAINTAINER Shivamya Sinha "30shiwamyasinha@gmail.com"

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5050

ENTRYPOINT ["python"]

CMD [ "app/app.py"]
