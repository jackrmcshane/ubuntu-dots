#!/bin/sh

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# sudo not required for some system commands
for command in mount umount sv pacman updatedb su ; do
	alias $command="sudo $command"
done; unset command

# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	mkd="mkdir -pv" \

# Colorize commands when possible.
alias \
	ls="ls -lhN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \

# These common commands are just too long! Abbreviate them.
alias \
    p="python3" \
    s="sudo" \
    rsync="rsync -e \"ssh\"" \
    py="python3" \
	ka="killall" \
	g="git" \
	sdn="sudo shutdown -h now" \
	e="nvim" \
	v="nvim" \
	z="zathura --fork" \
    clip='xclip -selection c' \
    neo="neofetch" \
    gs="git status" \
    t="tmux"

# directory shortcuts
alias cac="cd /home/asimov/.cache && ls -lhN" \
cf="cd /home/asimov/.config && ls -lhN" \
D="cd /home/asimov/Downloads && ls -lhN" \
d="cd /home/asimov/Documents && ls -lhN" \
dt="cd /home/asimov/.local/share && ls -lhN" \
rr="cd /home/asimov/.local/share && ls -lhN" \
h="cd /home/asimov && ls -lhN" \
mn="cd /mnt && ls -lhN" \
sc="cd /home/asimov/.local/bin && ls -lhN" \
src="cd /home/asimov/iu/embedded-sytems/ES-SPRING-2022/lab3/stm32/Core/Src && ls -lhN" \
cfx="$EDITOR /home/asimov/.config/x11/xresources" \
cfv="$EDITOR /home/asimov/.config/nvim/init.vim" \
cfz="$EDITOR /home/asimov/.config/zsh/.zshrc" \
cfa="$EDITOR /home/asimov/.config/shell/aliasrc" \
cfp="$EDITOR /home/asimov/.config/shell/profile" \
