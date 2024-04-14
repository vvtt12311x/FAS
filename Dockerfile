FROM python:3.9.15

WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /app 
EXPOSE 8000
ENTRYPOINT ["python3"] 
CMD ["server.py"]
