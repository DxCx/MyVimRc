#!/bin/bash

set -e

cd ~

if [ ! -d "${ENV_DIR_PATH}" ]; then
	echo "ENV_DIR_PATH (${ENV_DIR_PATH}) does not exists"
	exit
fi

echo "Uninstalling... (${ENV_DIR_PATH})"
rm -f ~/.vimrc
rm -f ~/.tmux.conf
rm -f ~/.zshrc
rm -Rf ${ENV_DIR_PATH}

chsh ${LOGNAME} -s /bin/bash
exec /bin/bash
