# Accept the Go version for the image to be set as a build argument.
ARG GO_VERSION=1.16
# First stage: build the executable.
FROM golang:${GO_VERSION}-alpine as builder

RUN apk add --no-cache ca-certificates make git

# Set the working directory outside $GOPATH to enable the support for modules.
WORKDIR /src

# Import the code from the context.
COPY ./ ./ 

RUN make

#
# Alpine release container
#
FROM alpine as alpine

# Add maintainer label in case somebody has questions.
LABEL maintainer="netgineer"

COPY --from=builder /src/dist/manticore_exporter.linux-amd64 /manticore_exporter

EXPOSE      9247
USER        nobody
ENTRYPOINT  [ "/manticore_exporter" ]