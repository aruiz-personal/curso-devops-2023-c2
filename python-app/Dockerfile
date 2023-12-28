FROM python:latest
#Creamos el directorio principal de trabajo
RUN mkdir /app
WORKDIR /app

#Copiamos nuestros archivos a nuestro directorio principal de trabajo
ADD . /app/

#Instalamos las dependencias de la aplicación
RUN pip install -r requirements.txt

#Creamos una variable para no tener que especificar el nombre del archivo .py en el cmd
RUN export FLASK_APP=app.py

#El puerto expuesto es el default de flask, él 5000
EXPOSE 5000

#Usamos gunicorn como web server:
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]