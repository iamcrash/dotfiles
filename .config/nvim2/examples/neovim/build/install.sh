#! /bin/sh
apt-get update && \
   apt-get -qq -y install software-properties-common && \
   add-apt-repository universe && \
   apt-get update && \
   apt-get -qq -y upgrade && \
   DEBIAN_FRONTEND=noninteractive TZ=America/Chicago apt-get -qq -y install \
   locales gcc g++ make zsh curl wget ripgrep fzf git fd-find neovim tmux zip tzdata \
   python2 python3 python3-pip python3-neovim g++ ruby-full postgresql-client

echo "LC_ALL=en_US.UTF-8" >> /etc/environment \
   && echo "LANG=en_US.UTF-8" >> /etc/environment \
   && echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale \
   && echo "LANG=en_US.UTF-8" >> /etc/default/locale

PATH="$PATH:/usr/bin/zsh"

