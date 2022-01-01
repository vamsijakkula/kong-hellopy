FROM python:3-alpine
 
WORKDIR /app
 
RUN echo "Flask==1.1.1" > requirements.txt
RUN pip install -r requirements.txt
COPY hello.py .
 
EXPOSE 5000
 
CMD ["python", "hello.py"]