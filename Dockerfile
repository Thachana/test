FROM centos:7
RUN yum -y update
RUN yum install -y openssh-server
RUN echo root:1234 | chpasswd
RUN ssh-keygen -A
CMD /usr/sbin/sshd -D
EXPOSE 22
