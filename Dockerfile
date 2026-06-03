from cr.yandex/contest/python:3.10-gpu

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    transformers==4.46.0 \
    torch==2.4.0 \
    accelerate==0.34.2 \
    sentencepiece==0.2.0 \
    sacrebleu==2.4.0 \
    peft==0.12.0 \
    huggingface_hub

COPY weights/ /workspace/weights/
COPY solution.py /workspace/solution.py

WORKDIR /workspace
CMD ["python", "/workspace/solution.py"]
