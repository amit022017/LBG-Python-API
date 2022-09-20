FROM python:latest

ARG port

COPY . .

RUN pip3 install -r "requirements.txt"



EXPOSE 8080

ENTRYPOINT ["python", "lbg.py"]