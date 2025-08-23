FROM pytorch/pytorch:2.8.0-cuda12.9-cudnn9-runtime

WORKDIR /app

COPY requirements.txt .
COPY ./dataset/ .
RUN pip install -r requirements.txt

COPY . .
