FROM golang:1.11-alpine AS build

RUN apk add --no-cache git
ADD . /app
WORKDIR /app
RUN go build -v .

FROM scratch
COPY --from=build /app/app /app
CMD [ "/app" ]