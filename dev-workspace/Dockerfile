# FROM ubuntu:22.10
FROM debian:bullseye

# Create non root user
ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ARG INSTALL_ZSH="true"
ARG UPGRADE_PACKAGES="true"

# Create a user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install sudo -y \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 040 /etc/sudoers.d/$USERNAME

# Install tooling
RUN    apt install -y curl \
    && apt install -y zsh \
    && apt install -y git \
    && apt install -y vim

# Install Oh my ZSH and common packages
# Source: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.0/containers/python-3/.devcontainer
COPY ./library-scripts/*.sh /tmp/library-scripts/
RUN  bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true"

# Oh my ZSH
# RUN apt install zsh -y
# RUN curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh --output omz.sh
# RUN sh omz.sh

# Install Make, Ping
RUN    apt install -y build-essential \
    && apt install -y iputils-ping

# Install Python

# Install Go

# Install Docker


WORKDIR /workspace

USER $USERNAME

CMD ["zsh"]
