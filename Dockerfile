FROM dxjoke/tectonic-docker

WORKDIR /

RUN apt-get update  \
  && apt-get install -y python3-pip \
  && apt-get clean

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
CMD ["python3", "./generate.py"]
