# Dockerfile
FROM rayproject/ray:nightly-py312-aarch64

COPY python/requirements.txt \
     python/torch-cpu-requirements.txt \
     python/torch-pyg-requirements.txt \
     python/requirements_compiled.txt ./
COPY docker/install-ml-docker-requirements.sh ./

RUN sudo chmod +x install-ml-docker-requirements.sh \
    && ./install-ml-docker-requirements.sh

# Export installed packages
RUN $HOME/anaconda3/bin/pip freeze > /home/ray/pip-freeze.txt

# Make sure pytorch is installed correctly
RUN python -c "import torch, numpy, pandas, mlflow"