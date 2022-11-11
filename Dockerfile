FROM python:3.8

WORKDIR /usr/src/app

COPY ./requirements.txt ./

RUN pip install -r requirements.txt    

RUN pip install flask && \
    pip install torch==1.8.2 --extra-index-url https://download.pytorch.org/whl/lts/1.8/cpu

COPY . .

EXPOSE 9091

ENTRYPOINT [ "python", "./app.py" ]