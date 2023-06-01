FROM python:3.10
# EXPOSE 5000 - gunicorn runs on port 80 - this is needed for flask development server
WORKDIR /app
COPY ./requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
#RUN pip install flask 
COPY . . 
# CMD ["flask", "run", "--host", "0.0.0.0"] - this line for flask 
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]