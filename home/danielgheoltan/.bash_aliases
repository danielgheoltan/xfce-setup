# Functions

function __md() {
    mkdir -p "$1" && cd "$1";
}

# ------------------------------------------------------------------------------
# OS

alias ~='cd ~'
alias -- -='cd -'
alias o='xdg-open .'
alias p='cd ~/projects'
alias c='clear'
alias a='nano ~/.bash_aliases && source ~/.bashrc'
alias h='sudo nano /etc/hosts'
alias md='__md'
alias root='sudo -i'
alias path='echo -e ${PATH//:/\\n}'
alias sites='cd /etc/apache2/sites-available'
alias cd..='cd ..'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ........='cd ../../../..'
alias ..........='cd ../../../../..'
alias now='date +"%T"'
alias today='date +"%Y%m%d"'
alias weather='curl "https://wttr.in/Cluj-Napoca"'

# ------------------------------------------------------------------------------
# HTOP

alias top='htop'

# ------------------------------------------------------------------------------
# Tree

alias tree='tree -N'

# ------------------------------------------------------------------------------
# Preetyping

alias pping='prettyping --nolegend -i 1'

# ------------------------------------------------------------------------------
# Grunt

alias kill-grunt='pidof grunt && kill -9 $(pidof grunt)' 

# ------------------------------------------------------------------------------
# Docker

alias dcl='docker container list --all'
alias dcs='docker container stop $(docker ps -a -q)';
alias dcr='docker container rm $(docker ps -a -q)';
alias dil='docker image list';
alias dir='docker image remove $(docker images -q)';
alias dr='docker container prune && docker image prune -a && docker volume prune && docker network prune'

# ------------------------------------------------------------------------------
# Magento

alias mage='php bin/magento'
alias magento='php bin/magento'

# ------------------------------------------------------------------------------
# Evozon

alias deploy:be='php bin/magento evozon:dev:deploy -a adminhtml -t Evozon/backend -l en_US'
alias deploy-grunt:be='php bin/magento evozon:dev:deploy -a adminhtml -t Evozon/backend -l en_US -g evozon_backend_en_us'
alias deploy:fe='php bin/magento evozon:dev:deploy -t Evozon/default -l en_US'
alias deploy-grunt:fe='php bin/magento evozon:dev:deploy -t Evozon/default -l en_US -g evozon_default_en_us'

# ------------------------------------------------------------------------------
# Carcloud

alias carcloud='cd ~/projects/carcloud/env/dev'
alias carcloud:start='cd ~/projects/carcloud/env/dev && ./cc start && ./cc enter cc-php'
alias carcloud:stop='cd ~/projects/carcloud/env/dev && ./cc stop'
alias carcloud:php='cd ~/projects/carcloud/env/dev && ./cc enter cc-php'
alias carcloud:web='cd ~/projects/carcloud/env/dev && ./cc enter cc-web'

