FROM python:3
RUN pip install flask
COPY app.py .
EXPOSE 80
CMD flask run --host=0.0.0.0 --port 80
