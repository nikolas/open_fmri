FROM python:3.4

ENV PYTHONUNBUFFERED 1

# Requirements have to be pulled and installed here, otherwise caching won't work
ADD ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

#RUN groupadd -r open_fmri && useradd -r -g open_fmri open_fmri
