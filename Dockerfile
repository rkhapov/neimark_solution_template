FROM ubuntu:22.04 as build-stage

WORKDIR /solution

RUN apt-get update -y && apt-get install -y build-essential

COPY ./main.S /solution

RUN as /solution/main.S -o /solution/main.o
RUN ld /solution/main.o -o /solution/solution

FROM scratch AS export-stage

COPY --from=build-stage /solution/solution .
