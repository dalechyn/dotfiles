if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	if [[ -x ~/.wayland/env/export_all.sh ]]; then
		source ~/.wayland/env/export_all.sh
	fi
fi
export EDITOR=/usr/bin/vim
