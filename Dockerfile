FROM python:3
MAINTAINER Yevhen Pozdniakov "zpozdniakov@gmail.com"
COPY ./web /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["train_mnist_model.py"]
EXPOSE 5000
