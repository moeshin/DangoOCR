FROM moeshin/dango-ocr:runtime

ENV OCR_HOST=0.0.0.0
ENV OCR_PATH=/orc/api

EXPOSE 6666

RUN git clone https://github.com/PantsuDango/DangoOCR.git /app

WORKDIR /app

ENTRYPOINT python app.py --host $OCR_HOST --path $OCR_PATH
