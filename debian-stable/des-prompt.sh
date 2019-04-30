# DES Tue May 13, 2014: Custom prompt
# blue (1;34m): workstations
# red (1;31m): physical servers, vm hosts
# green (1;32m): virtual servers, vm guests
# yellow (1;33m): docker container
if [ "$PS1" ]; then
	color1="\[\033[1;33m\]"
	color2="\[\033[0m\]"
	PS1="${color1}\u@\h${color2}:\w\$ "
	unset color1 color2
fi
