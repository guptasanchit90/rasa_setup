## Install and Setup Guide (Steps used in docker file)

``` apt-get update ```

## Install GIT
``` apt-get install git ```

## Install Python3
``` apt-get install software-properties-common ```
``` add-apt-repository ppa:jonathonf/python-3.6 ```
``` apt-get update ```
``` apt-get install python3.6 ```

## Setup pip (Python package installer)
``` apt-get install python-pip python-dev build-essential ```
``` pip3 install --upgrade pip ```
``` pip3 install --upgrade virtualenv ``` 

## Root for setup
``` mkdir rasa ```
``` cd rasa ```

## Download RASA Code and install
``` git clone https://github.com/RasaHQ/rasa_core.git ```
``` cd rasa_core ```
``` pip3 install -r requirements.txt ```
``` pip3 install -e . ```

## Download RASA NLU and install
``` git clone https://github.com/RasaHQ/rasa_nlu.git ```
``` cd rasa_nlu ```
``` pip3 install -r alt_requirements/requirements_full.txt ```
``` pip3 install -e . ```

## Setup backend for using RASA NLU
``` pip3 install rasa_nlu[spacy] ```
``` python3 -m spacy download en_core_web_md ```
``` python3 -m spacy link en_core_web_md en ```
