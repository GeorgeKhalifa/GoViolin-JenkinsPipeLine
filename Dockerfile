FROM golang:1.16-alpine

RUN mkdir /build

# for easy access project files 
WORKDIR /build

# copy the source code inside the container build directory
COPY . .

# GO initialization - track code dependencies

RUN if [[ -f "/build/go.mod" ]] ; then go mod download ; else go mod init ; fi

# Build the application
RUN go build -o output-app.o .

EXPOSE 8080

ENTRYPOINT ["./output-app.o"]