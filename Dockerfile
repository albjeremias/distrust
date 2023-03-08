FROM golang:1.20.2
WORKDIR /app
COPY . /app
RUN useradd -ms /bin/bash nonroot

RUN go build -o distrust .

EXPOSE 3000

ENTRYPOINT ["/app/distrust"]
