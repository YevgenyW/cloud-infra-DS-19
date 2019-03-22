FROM python:3
MAINTAINER Yevhen Pozdniakov "zpozdniakov@gmail.com"
#RUN apt-get update -y
#RUN apt-get install -y python-pip python-dev build-essential
COPY ./web /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["load_service.py"]
EXPOSE 5000
