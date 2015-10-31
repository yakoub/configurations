
# If not running interactively, don't do anything
[[ $- != *i* ]] && return


none="\[\e[0m\]"
c1="\[\e[0;32m\]"
c2="\[\e[1;32m\]"
c3="\[\e[1;33m\]"
c4="\[\e[1;34m\]"

export PROMPT_DIRTRIM=5
if [ $TERM != "linux" ]; then
	PS1="\w\n$c4<=\A@\u=$c3\W]>$c2";
fi
#PS1="$green\w$Blue\n$Light<*\u$Blue]>"
#PS1="$green\w$Blue\n$red<*$Light\u$Blue]>"
#PS1="$white\w\n$black<*\u$white]>"

PATH="$PATH:/home/yakoub/bin"

alias sshy='ssh -c arcfour,blowfish-cbc -YC'
alias cp='cp -v'
alias lsno='ls --color=never'
alias ls='ls --color=auto'
alias l='ls'
alias mv='mv -v'
alias rm='rm -iv'
alias grep='grep -n --color=auto'
alias clock='xclock -d -strftime %B[%m/%d]%a@%R'
alias scr_rec='ffmpeg -f x11grab -show_region 1 -s 1280x800 -sameq -i :0.0+100,100 screen.avi'
alias host_scan='nmap -sn 192.168.2.0-32'
export LESS="${LESS} -R"
alias vi='vim'
#man -M

if [ $TERM != "linux" ]; then
LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:*.alert=05;04;31';
export LS_COLORS;
fi
