FROM opensuse/leap:latest

RUN zypper install -y python python-devel ansible sudo which tar gzip curl \
&& groupadd ansible-test-user \
&& useradd ansible-test-user \
&& usermod -a -G ansible-test-user ansible-test-user \
&& mkdir -p /home/ansible-test-user \
&& chown ansible-test-user:ansible-test-user /home/ansible-test-user
