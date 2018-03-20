FROM ubuntu:16.04

MAINTAINER Sanchit Gupta "gupta.sanchit90@gmail.com"

RUN apt-get update && \
    apt-get install git -y && \
    apt-get install software-properties-common -y && \
    add-apt-repository ppa:jonathonf/python-3.6 && \
    apt-get update && \
    apt-get install python3.6 -y && \
    apt-get install python-pip python-dev build-essential -y && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade virtualenv && \
    mkdir rasa && \
    cd rasa && \
    git clone https://github.com/RasaHQ/rasa_core.git && \
    cd rasa_core && \
    pip3 install -r requirements.txt && \
    pip3 install -e . && \
    git clone https://github.com/RasaHQ/rasa_nlu.git && \
    cd rasa_nlu && \
    pip3 install -r alt_requirements/requirements_full.txt && \
    pip3 install -e . && \
    pip3 install rasa_nlu[spacy] && \
    python3 -m spacy download en_core_web_md && \
    python3 -m spacy link en_core_web_md en

    EXPOSE 5000
