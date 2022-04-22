# Because 2018.11.26, the last release unaffected by issue-4553,
# is not compatible with python>=3.10
FROM python:3.9

ARG _PIPENV=9999

RUN pip install --upgrade pip "pipenv<=${_PIPENV}"

RUN pipenv --version

COPY . /main

WORKDIR /main

RUN pipenv lock --verbose
