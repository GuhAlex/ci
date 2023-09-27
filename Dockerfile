FROM golang:rc

RUN mkdir -p /app
WORKDIR /app
COPY app/* /app/
RUN go build main.go
EXPOSE 8080
RUN go build ./main.go
CMD ["./main"]
