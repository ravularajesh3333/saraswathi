FROM ubuntu

RUN apt-get update && apt-get install -y python3 python3-pip && mkdir /var/lib/jenkins/docs

WORKDIR /var/lib/jenkins/docs

COPY raj.py /var/lib/jenkins/docs

EXPOSE 80

CMD ["python3", "raj.py"]
]
