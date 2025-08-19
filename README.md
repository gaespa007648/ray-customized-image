# 簡介

該專案是延伸rayproject/ray自行打包的Image。

除了打包了PyTorch套件之外, 亦提供機器學習常見的套件如scikit-learn, pandas, numpy, mlflow, 並搭載了雲端儲存工具的套件供整合。

# 資料架構

在這個專案底下的資料各自的用途如下

1. python: 存放要安裝的套件, 包含必須安裝的基本套件於requirements.txt, 及額外安裝的torch套件。
2. docker: 存放Docker執行腳本。
3. pip-freeze.txt: 這個是建置成功後產生的套件版本文件, 用來參考該Image實際使用的套件版號。

# 使用方式

1. 使用docker build建立映像檔並用docker push推至存放處
2. 修改kubernetes yaml的image, 使用該客製化的映像檔

# 參考文獻

參考ray-ml如何設計Dockerfile

[https://github.com/ray-project/ray/blob/master/docker/ray-ml/Dockerfile](https://github.com/ray-project/ray/blob/master/docker/ray-ml/Dockerfile)

參考ray-ml/install-ml-docker-requirements.sh如何安裝套件(本專案為ray-ml的閹割版本, 不安裝GPU套件, 若有需要請參考下述文件)

[https://github.com/ray-project/ray/blob/master/docker/ray-ml/install-ml-docker-requirements.sh]()

參考ray-ml/dl-cpu-requirements.txt, 設定要安裝套件的版本

[https://github.com/ray-project/ray/blob/master/python/requirements/ml/dl-cpu-requirements.txt](https://github.com/ray-project/ray/blob/master/python/requirements/ml/dl-cpu-requirements.txt)
