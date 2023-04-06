FROM moeshin/dango-ocr:runtime

ENV OCR_HOST=0.0.0.0
ENV OCR_PATH=/orc/api

EXPOSE 6666

RUN mkdir /root/app
COPY .git /root/app/.git
RUN git clone --single-branch /root/app /app && rm -rf /root/app

WORKDIR /app

ENTRYPOINT python app.py --disable-image-path --host $OCR_HOST --path $OCR_PATH
