import os
from huggingface_hub import snapshot_download

model = "google/gemma-2-2b-it"
trgt = "./weights"

os.makedirs(trgt, exist_ok=True)
snapshot_download(repo_id=model,local_dir=trgt, ignore_patterns=["*.pt","*.bin"])
print("download weights to ./weights")
