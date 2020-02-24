FROM archlinux/base:latest

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel

RUN groupadd -g 1000 testuser && \
    useradd -r -u 1000 -g testuser -p testuser testuser
USER testuser
