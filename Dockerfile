FROM python:3.5
MAINTAINER Konrad Lisiczynski <klisiczynski@gmail.com>
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
COPY static/ /app/
COPY app.py /app/
EXPOSE 5000
CMD ["python", "app.py"]
