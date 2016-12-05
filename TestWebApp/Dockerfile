FROM golang:1.7

ARG devUid=""
ARG devGid=""

RUN if [ -n "$devGid" ] && [ "$devGid" -ge 500 ]; then groupadd -r -g "$devGid" dev; fi
RUN if [ -n "$devUid" ] && [ "$devUid" -ge 500 ]; then useradd -r -g "$devGid" -u "$devUid" dev; fi
RUN if [ -n "$devUid" ] && [ "$devUid" -ge 500 ]; then chown -Rv dev:dev /go; fi

# Install beego and the bee dev tool
RUN go get github.com/astaxie/beego && go get github.com/beego/bee

# Expose the application on port 8080
EXPOSE 8080

# Set the entry point of the container to the bee command that runs the
# application and watches for changes
CMD ["bee", "run"]
