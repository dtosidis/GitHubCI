FROM python:2.7
LABEL maintainer="Dimitris"

EXPOSE 3111

COPY /techtrends/requirements.txt .
RUN pip install -r requirements.txt

COPY /techtrends .
RUN python init_db.py

# command to run on container start
CMD [ "python", "app.py" ]
