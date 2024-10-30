FROM kasmweb/ubuntu-focal-desktop:1.15.0

ENV HOME /home/kasm-user
WORKDIR $HOME

USER root

RUN apt update && apt upgrade -y
RUN apt install python3-pip -y
RUN pip install -U openai-whisper
RUN apt update && apt install ffmpeg -y
RUN pip install setuptools-rust
