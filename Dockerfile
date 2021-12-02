FROM ubuntu:20.04


RUN mkdir ./app
RUN chmod 777 ./app
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN apt -qq update --fix-missing && \
    apt -qq install -y git \
    aria2 \
    wget \
    curl \
    busybox \
    unzip \
    unrar \
    tar \
    python3 \
    ffmpeg \
    python3-pip \
    p7zip-full \
    p7zip-rar

RUN wget https://rclone.org/install.sh
RUN bash install.sh

RUN mkdir /app/gautam
RUN wget -O /app/gautam/gclone.gz https://git.io/JJMSG
RUN gzip -d /app/gautam/gclone.gz
RUN chmod 0775 /app/gautam/gclone

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
#RUN chmod +x extract
CMD ["bash","start.sh"]
[leech group]
type = drive
scope = drive
token = {"access_token":"ya29.a0ARrdaM-NSLvz1S8nGzBFxT1u_guo8N_Qtcsl5dLYGjwpf2aKQWDuigRENsu-2QpEQ0ic4rjCjRT3PrI0fSRJ_FNIOKCc19DoF38mVe6Ww4RjmsHRGGUIvc1a_OMoLZOvqOeEVbPWiMIZfuc_tfFhuHEb1KV-","token_type":"Bearer","refresh_token":"1//0gmg9eZi1gTAkCgYIARAAGBASNwF-L9IrqsGrOChakAvsat6sp0C2YeVJlb914YXfFkfVKOAyGcg-1PaTQoIhkSBEVzkUi13xgq4","expiry":"2021-11-28T10:24:46.3306373+05:30"}
team_drive = 0ANsoAoTsy-dEUk9PVA
root_folder_id =

[leech 2]
type = drive
scope = drive
root_folder_id =
token = {"access_token":"ya29.a0ARrdaM9ldDH3GJ2C2uzro-wXgOGpnqn1wX7cr2UNdfC15189XRHrD9GuPSbh_TvXIbYc8oXT6qlHxZ9F1FYEAs-2o0pCY_yae8R85U6GXxsRmhbO4uX2mdfVpKser9MxEonOGRxJapVhBGxjo74Cn0dXre9w","token_type":"Bearer","refresh_token":"1//0gBjsXxM6lczZCgYIARAAGBASNwF-L9IrEvD49iT_TLUYLlX6Be0i8wH7TrxEwOSZWltfrab8GkvfSTPRFH_OsaNCbxS_6Rc9iZ4","expiry":"2021-11-28T10:26:39.2337604+05:30"}
team_drive = 0ANsoAoTsy-dEUk9PVA
