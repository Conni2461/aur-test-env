FROM archlinux:latest

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel

RUN groupadd -g 1000 testuser && \
    useradd -m -d /home/testuser -u 1000 -g testuser testuser
RUN echo 'testuser:testuser' | chpasswd
RUN echo 'testuser ALL=(ALL)  ALL' >> /etc/sudoers
USER testuser
