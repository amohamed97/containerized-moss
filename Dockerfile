FROM perl:5-slim

ENV RESULT_NAME "Project Results"
ENV PROGRAMMING_LANGUAGE "python"

COPY ./moss.pl /src/app/moss.pl
WORKDIR /src/app
ENTRYPOINT ./moss.pl -l $PROGRAMMING_LANGUAGE -c "$RESULT_NAME" ./submissions/*
