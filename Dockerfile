FROM archlinux/base:latest
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel
