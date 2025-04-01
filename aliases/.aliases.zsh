alias c='clear'
alias lsl='ls -larth'
alias ccat='pygmentize -g'
alias icat='kitten icat'

alias open="nautilus . &"

alias root='cd /'
alias dev='cd ~/Dev'
alias van='cd ~/Dev/projects/van-project/new-version-laravel-vuejs/vancraft'
alias apache-conf='cd /etc/httpd/conf'
alias php-ini='cd /etc/php'
alias inertia='cd /home/$USER/Dev/framework/inertiajs'
alias dot='cd /home/$USER/Dev/dotfiles'
alias smart='~/Code/clients/smartlife/smartlifebiosciences.local'

alias nivm='nvim'

alias spsyu='sudo pacman -Syu'
alias up='sudo pacman -Syu'
alias update='sudo pacman -Syu'

alias ga='git add -A'
alias gc='git commit -m $1'
alias gp='git push'
alias gpull='git pull'

alias vfzf='vim $(fzf)'
alias nvfzf='nvim $(fzf)'
alias gitree='tree --gitignore'
alias emfzf='emacs_with_fzf.sh'
alias doomfzf='doom_with_fzf.sh'

alias refile='nvim /home/$USER/org/refile.org'
alias org='cd /home/$USER/org'
alias 'nvorg'='nvim /home/$USER/org/.'

alias start-apache='sudo systemctl start httpd'
alias restart-apache='sudo systemctl restart httpd'
alias status-apache='sudo systemctl status httpd'
alias stop-apache='sudo systemctl stop httpd'

alias start-php='php -S localhost:8080'
alias start-php-dir='php -S localhost:8080 -t $1'

alias start-sql='sudo service mariadb start'
alias stop-sql='sudo service mariadb stop'
alias restart-sql='sudo service mariadb restart'
alias status-sql='sudo service mariadb status'

alias woldeb='wol d0:17:c2:88:fa:d3'
alias wol-idebian='wakeonlan -i 86.236.176.8 d0:17:c2:88:fa:d3'
alias wolodr='wol 00:1e:06:49:18:a0'

alias ssh-imanjaro='ssh shaun@86.236.187.175'

alias debianoff="ssh -p 2223 shaun@localdebian 'sudo /usr/bin/systemctl poweroff'"
alias ssh-pi='ssh pi@90.63.11.105 -p 2222'
alias ssh-debian='ssh shaun@90.63.11.105 -p 2223'

alias push-home='rsync -av --delete --include=".bash_aliases"  --exclude-from=.excludes --info=progress2 -e ssh /home/shaun shaun@192.168.1.34:/media/data_a/bak_axel/synchro'
alias cpy-home='rsync -av --info=progress2 --exclude-from=.excludes_cache  -e ssh /home/shaun shaun@192.168.1.17:/media/data_a/bak_axel/linux_backup'
alias cpy-root='sudo rsync -aAXH --info=progress2 --delete -e ssh --exclude={"/Dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/media/*","/media/*","/lost+found","/home/*"} / shaun@i7-manjaro:/home/shaun/DATA/backup/manjaro-lenovo/root'
alias cpy-doc='rsync -av --info=progress2 -e ssh /media/d/Documents shaun@192.168.1.17:/media/data_a/bak_axel'
alias cpy-blender='rsync -av --info=progress2 -e ssh /media/d/Blender shaun@192.168.1.17:/media/data_a/bak_axel'
alias cpy-video='rsync -av --info=progress2 -e ssh --exclude "films-series" /media/d/Vidéos shaun@192.168.1.17:/media/data_a/bak_axel'
alias cpy-images='rsync -av --info=progress2 -e ssh /media/d/Images shaun@192.168.1.17:/media/data_a/bak_axel'

alias pull-home='rsync -av --info=progress2 -e ssh shaun@192.168.1.17:/media/data_a/bak_axel/synchro/shaun/ /home/shaun/'
