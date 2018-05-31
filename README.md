Docker container for collectd daemon

to be run with privileges 

docker run --rm --privileged --net=host -v /:/hostfs:ro --name collectd
