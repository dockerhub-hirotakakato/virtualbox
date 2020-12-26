FROM centos:7

RUN set -eux; \
    curl -fLRSso /etc/yum.repos.d/virtualbox.repo https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo; \
    yum -y install $(yum -qy list VirtualBox-* | awk 'END { print $1 }'); \
    rm -rf /var/cache/yum
