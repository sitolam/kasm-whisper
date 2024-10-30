FROM kasmweb/ubuntu-focal-desktop:1.15.0

ENV HOME /home/kasm-user
WORKDIR $HOME

USER 1000

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install python3-pip -y
RUN pip install -U openai-whisper
RUN sudo apt update && sudo apt install ffmpeg -y
RUN pip install setuptools-rust
