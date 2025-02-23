FROM python:3.12.2

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y libgl1-mesa-glx

RUN pip install numpy pandas scikit-learn opencv-python pillow wandb

CMD ["python", "distance_classification.py"]
