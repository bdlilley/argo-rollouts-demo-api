FROM golang:1.20 as build

WORKDIR /src

ENV CGO_ENABLED=0

COPY go.* .

RUN go mod download

COPY . .

RUN --mount=type=cache,target=/root/.cache/go-build go build -o /src/main

FROM scratch

ARG IMAGE

ARG IMAGE_TAG

ENV IMAGE=$IMAGE

ENV IMAGE_TAG=$IMAGE_TAG

COPY --from=build /src/main /

ENTRYPOINT ["/main"]
