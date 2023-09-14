FROM python:3.8
ADD cam.py .
WORKDIR /pose_dest
COPY requirements.txt .
COPY lite-model_movenet_singlepose_lightning_3.tflite .
RUN pip install -r requirements.txt
CMD ["python","./cam.py"]
