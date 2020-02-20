FROM archlinux/base:latest
RUN pacman -Syyu --noconfirm
RUN pacman -S base-devel
