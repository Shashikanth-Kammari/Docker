# STAGE 1: The Build Environment

FROM golang:1.26 AS builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o myapp .

# STAGE 2: The Final Runtime Environment

FROM alpine:3.20 
RUN adduser -D appuser
USER appuser
WORKDIR /home/appuser
# Copy ONLY the compiled binary from the "builder" stage
COPY --from=builder /app/myapp .
CMD ["./myapp"]
