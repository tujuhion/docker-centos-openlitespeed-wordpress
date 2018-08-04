FROM centos:latest

MAINTAINER "tujuhion" <yanwar.purnama@gmail.com>

ENV container docker

# tools
RUN yum -y install epel-release iproute at curl crontabs git

# make sure firewall
EXPOSE 21
EXPOSE 80
EXPOSE 443
EXPOSE 7080

#Install Proftpd
bash <( curl -k https://raw.githubusercontent.com/tujuhion/autoinstall/master/proftpd.sh )

#Install Litespeed Wordpress

bash <( curl -k https://raw.githubusercontent.com/litespeedtech/ols1clk/master/ols1clk.sh ) --lsphp 72 --wpuser admin --wppassword 12345@  -a 12345@ -w

CMD ["/usr/sbin/init"]
