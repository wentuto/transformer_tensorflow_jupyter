# transformer_tensorflow_jupyter
Jupyter code to train English-to-Chinese translation transformer model and evaluate it by tensorflow framework.  
Original code comes from https://leemeng.tw/neural-machine-translation-with-transformer-and-tensorflow2.html  

# Contribution
Modified it for running @ Tensorflow 2.13  
Add docker support  
Add Chinese Simplified to Traditional Chinese conversion  

# Library

TF Version: 2.13  
cuDNN Version: 8.6  

# For docker user to build environment
```
docker compose build transformer
./start_trans.sh
```
