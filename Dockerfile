# syntax=docker/dockerfile:1.0.0-experimental
FROM golang:1.11-alpine AS build

RUN apk add --no-cache git
ADD . /app
WORKDIR /app
RUN --mount=type=cache,target=/root/.cache  --mount=type=cache,target=/go/pkg/mod go build -v .
#RUN go build -v .

#FROM scratch
#COPY --from=build /go/src/app/app /app
#CMD [ "/app" ]