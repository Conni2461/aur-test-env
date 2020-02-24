FROM archlinux/base:latest

RUN groupadd -g 999 testuser && \
    useradd -r -u 999 -g testuser testuser
USER testuser

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel
