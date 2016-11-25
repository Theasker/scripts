FROM debian:jessie
RUN apt-get update && \
    apt-get install -y git openssh-server && \
    mkdir /var/run/sshd
RUN useradd git -G sudo -s /bin/bash -m && \
    echo "git:git" | chpasswd
CMD ["/usr/sbin/sshd", "-D"]
