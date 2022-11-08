FROM python:3.9

WORKDIR /distributed_gat

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

CMD [ "python", 'train.py' ]