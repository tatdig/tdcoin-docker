Commands to build:
$ docker build -t tdc-docker-image .
Command to register:
$ docker run --name tdc-live -v /var/lib/tdcoin-data:/app/data -p 9902:9902 -p 9901:9901 -td tdc-docker-image
Command to start:
$ docker start tdc-live
Command to stop:
$ docker stop tdc-live
