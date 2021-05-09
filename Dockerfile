FROM opensuse/leap:latest

RUN zypper install -y python3 python3-devel python3-libxml2-python ansible sudo which tar gzip curl which \
&& groupadd ansible-test-user \
&& useradd ansible-test-user \
&& usermod -a -G ansible-test-user ansible-test-user \
&& mkdir -p /home/ansible-test-user \
&& chown ansible-test-user:ansible-test-user /home/ansible-test-user \
&& ln -s /usr/bin/python3 /usr/bin/python
