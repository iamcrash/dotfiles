#! /bin/sh
USERNAME=$(whoami)
UID=$UID
USER_GROUP=staff
GID=$GID

echo "add user:${USERNAME}"
addgroup -g ${USER_GID} ${USER_GROUP}
adduser -u ${USER_UID} -G ${USER_GROUP} -D -s /bin/zsh ${USER}
