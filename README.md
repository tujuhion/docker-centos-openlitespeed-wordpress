# Docker Wordpress with Centos7 Openlitespeed MariaDB10.2 ProFTPD

This Docker will run

- Centos 7
- Wordpress
- Openlitespedd
- MariaDB10.2
- ProFTPD

you can access litespeed admin in http://yourhostname:7080, set password with command

```/usr/local/lsws/admin/misc/admpass.sh```

Document root in:
```
/home/defdomain/html/
```
## Build docker image
```
git clone https://github.com/tujuhion/docker-centos-openlitespeed-wordpress.git
cd docker-centos-openlitespeed-wordpress
docker build --rm=true --no-cache=true -t docker-centos-openlitespeed-wordpress .
```
Run docker image
```
docker run docker-centos-openlitespeed-wordpress
```
## Hub Docker

Can found in https://hub.docker.com/r/7ion/docker-centos-openlitespeed-wordpress/

or pull
```
docker pull 7ion/docker-centos-openlitespeed-wordpress
```
