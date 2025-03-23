ARG GO_VERSION=1
FROM golang:${GO_VERSION}-bookworm AS builder

# Build stage
WORKDIR /usr/src/app
COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . .
RUN go build -v -o /run-app .


# Runtime stage
FROM debian:bookworm

# Create the required directory for the event store
RUN mkdir -p /app/src && chmod -R 755 /app/src
RUN mkdir -p /app/css && chmod -R 755 /app/css
RUN mkdir -p /app/html && chmod -R 755 /app/html
RUN mkdir -p /app/public && chmod -R 755 /app/public

# Copy the src folder
COPY src /app/src

# Copy the public folder
COPY public /app/public

# Copy the css folder
COPY css /app/css

# Copy the html folder
COPY html /app/html

# Set the working directory
WORKDIR /app

# Copy the binary from the build stage
COPY --from=builder /run-app /usr/local/bin/

# Run the app
CMD ["run-app"]
