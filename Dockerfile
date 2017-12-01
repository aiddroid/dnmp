FROM centos:centos7

MAINTAINER Allen Hu<aiddroid@gmail.com>

ENV SSH_PASSWORD=P@ssw0rd

# install git
RUN yum install -y epel-release \
	&& rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
	&& yum install -y php72 php72-php-devel php72-php-fpm php72-php-gd php72-php-intl php72-php-json php72-php-mcrypt php72-php-mbstring php72-php-pdo php72-php-mysqlnd php72-php-opcache php72-php-soap php72-php-xml php72-php-ldap php72-php-pecl-memcached php72-php-pecl-redis

# set workdir
WORKDIR /var/www/html

# expose
EXPOSE 9000

CMD ["/opt/remi/php72/root/sbin/php-fpm"]
