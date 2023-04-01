FROM moeshin/dango-ocr:runtime

RUN git clone https://github.com/PantsuDango/DangoOCR.git /app

WORKDIR /app

ENTRYPOINT ["python", "app.py"]
