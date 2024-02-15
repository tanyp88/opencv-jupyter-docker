FROM nvidia/cuda:11.4.3-base-ubuntu20.04
ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive
RUN mv /etc/apt/sources.list /etc/apt/sources.list.default 
COPY sources.list /etc/apt/sources.list 
COPY start-notebook.sh /usr/local/bin/
#
RUN apt update && apt upgrade -y && \
apt install python3 -y && \
apt install python3-pip tesseract-ocr tini  net-tools libgl1-mesa-glx libglib2.0-0 libsm6 libxrender1 libxext6 -y
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ 
RUN pip install opencv-python &&\
pip install opencv-contrib-python && \
pip install matplotlib pytesseract pillow && \
pip install nodejs jupyterlab 
#ENTRYPOINT ["/usr/local/bin/tini", "--","/usr/local/bin/start-notebook.sh"]
#ENTRYPOINT /usr/local/bin/start-notebook.sh
#CMD ["tail","-f","/dev/null" ] 

