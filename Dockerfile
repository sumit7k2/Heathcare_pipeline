FROM python:3.9
WORKDIR /home
COPY . /home
RUN pip install streamlit pandas requests 
EXPOSE 8501
CMD ["streamlit", "run", "ap.py", "--server.port=8501", "--server.address=0.0.0.0"]

