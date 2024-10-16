FROM python:3.7-slim AS base

RUN apt-get update

RUN echo "Do some science"

FROM base AS builder

COPY . .

RUN pip install -r requirements.txt

FROM builder

ENTRYPOINT [ "python", "analyze.py" ]
CMD ["data.csv"]