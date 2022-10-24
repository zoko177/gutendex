
FROM python:3.9

WORKDIR /project

RUN apt-get update && apt-get -y install rsync
COPY /project/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY /project .


COPY .env ./gutendex/
COPY entrypoint.sh .


ENTRYPOINT [ "sh", "entrypoint.sh" ]
