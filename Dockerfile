FROM python:3.8.18-bullseye
COPY ./code /code

WORKDIR /code


# https://koalanlp.github.io/koalanlp/usage/PlatformInstall.html#Linux
RUN apt-get update && apt install openjdk-11-jdk --yes


RUN pip install --upgrade pip


#RUN pip install -r requirements.txt
RUN pip install py4j~=0.10
RUN pip install requests~=2.22
RUN pip install koalanlp~=2.1.1

CMD ["bash"]