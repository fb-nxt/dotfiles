if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting ""
set -p PATH ~/.local/bin
set -p PATH ~/.npm-global/bin
starship init fish | source
zoxide init fish --cmd cd | source

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function ls
	command eza --icons $argv
end

# grub
abbr grub 'sudo grub-mkconfig -o /boot/grub/grub.cfg'

# fa运行fastfetch
abbr fa fastfetch
abbr reboot 'systemctl reboot'
function sl 
	command sl | lolcat	
end
function 滚
	sysup 
end
function raw
	command ~/.config/scripts/random-anime-wallpaper.sh $argv
end

function 安装
	command yay -S $argv
end

function 卸载
	command yay -Rns $argv
end 

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/shorin/.lmstudio/bin
# End of LM Studio CLI section

# Miniconda3
set -p PATH /opt/miniconda3/bin

