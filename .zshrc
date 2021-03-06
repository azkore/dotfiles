source ~/.shrc
source ~/.shaliases

export SHELL=`which zsh`
export ZSH_CACHE_DIR="${TMPDIR}/zsh"
[ -d "$ZSH_CACHE_DIR" ] || mkdir -p $ZSH_CACHE_DIR

autoload -U compinit
compinit
# https://github.com/zplug/zplug/pull/396
if [[ ${UID} -eq 0 ]] && [[ -n ${SUDO_USER} ]]; then
# Disable file permissions check since we did it when starting the shell executing sudo
 alias compinit="compinit -u"
fi
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"
#
# Uncomment the following line to disable auto-setting terminal title.
#DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

test -f ~/.zshrc.`uname` && source ~/.zshrc.`uname`

#PROMPT="%n@%m %3~ %(!.#.$) "    # default #prompt
PROMPT='%n@%m %15<..<%~%<< %(!.#.$) '
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# correct commands but not args
unsetopt correct_all
setopt correct
setopt share_history
setopt histexpiredupsfirst #duplicate history lines are expired firs
setopt histfindnodups #no duplicate history lines found
setopt histignorealldups #ignore all duplicated history lines
setopt histreduceblanks #possible garble history
setopt histsavenodups
setopt histverify #verify history expansion
setopt incappendhistory #update history right after input
setopt sharehistory
setopt histignorespace #ignore commands begins with space
setopt prompt_subst
export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#export TERM=xterm-256color
#set term title to hostname
#print -Pn "\e]2;`hostname`\a"

#zsh global aliases
alias -g L="|less"
alias -g H="|head"
alias -g T="|tail"
alias -g G="|grep"
alias -g N="&>/dev/null&"
alias -g O="2>&1"

autoload -z edit-command-line
zle -N edit-command-line

set -o vi
bindkey "^X^E" edit-command-line
bindkey -M vicmd v edit-command-line
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins '^O' accept-line-and-down-history
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward
autoload -Uz history-beginning-search-menu; zle -N history-beginning-search-menu
bindkey -M viins '^P' history-beginning-search-menu
bindkey -M vicmd '^P' history-beginning-search-menu
bindkey -M viins '.' insert-last-word
bindkey -M vicmd '.' insert-last-word

bindkey \^U backward-kill-line
bindkey \^P history-beginning-search-menu

TF_ALIAS=fuck alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

#no manual rehash
zstyle ':completion:*' rehash true
#test -f /usr/local/bin/aws_zsh_completer.sh && source /usr/local/bin/aws_zsh_completer.sh

dmachine() {eval $(docker-machine env default)}
dformac() {unset `echo ${(Mk)parameters:#DOCK*}`}

autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/bin/vault vault
#POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='awesome-patched'
DEFAULT_USER=euk
#POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(kubecontext aws vcs newline context dir background_jobs command_execution_time vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator history time)
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=30
#POWERLEVEL9K_SHORTEN_STRATEGY=truncate_absolute_chars
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VI_INSERT_MODE_STRING=''
#
# ###########################################################
# # Packages
#
#zplug "paulmelnikow/zsh-startup-timer"
#zplug"tysonwolker/iterm-tab-colors"
#zplug "desyncr/auto-ls"
#zplug "momo-lab/zsh-abbrev-alias"
#zplug "rawkode/zsh-docker-run"
#zplug "arzzen/calc.plugin.zsh"
###########################################################
# Theme
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
#zplug "b-ryan/powerline-shell"
#
#function powerline_precmd() {
#    PS1="$(powerline-shell --shell zsh $?)"
#}
#
#function install_powerline_precmd() {
#  for s in ${precmd_functions[@]}; do
#    if [ "$s" = "powerline_precmd" ]; then
#      return
#    fi
#  done
#  precmd_functions+=(powerline_precmd)
#}
#
#if [ "$TERM" != "linux" ]; then
#    install_powerline_precmd
#fi
#
###########################################################
#eval "$(jump shell)"


### Added by Zplugin's installer
source "${HOME}/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin ice svn wait'2' lucid; zplugin snippet OMZ::plugins/git

zplugin ice svn wait'2' lucid; zplugin snippet OMZ::plugins/kubectl
source $ZSH_CACHE_DIR/kubectl_completion

zplugin ice svn wait'2' lucid; zplugin light djui/alias-tips
zplugin ice svn wait'2' lucid; zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'2' lucid atlight'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait'3' lucid; zplugin light zsh-users/zsh-completions
zplugin ice wait'3' lucid; zplugin light peterhurford/up.zsh
zplugin ice wait lucid; zplugin light zdharma/history-search-multi-word

# prompt
zplugin ice svn; zplugin snippet OMZ::plugins/git-prompt
zplugin ice svn; zplugin snippet OMZ::plugins/aws
zplugin ice svn; zplugin snippet OMZ::plugins/vi-mode
RPROMPT='$(vi_mode_prompt_info)'$RPROMPT

#zplugin light mengelbrecht/slimline
#SLIMLINE_LEFT_PROMPT_SECTIONS="k8s |default|"
zplugin light jonmosco/kube-ps1
PS1='$(kube_ps1)'$PS1
#slimline::section::k8s::render() {
#  kube_ps1
#}
KUBE_PS1_SYMBOL_COLOR=cyan
KUBE_PS1_CTX_COLOR=green
KUBE_PS1_NS_COLOR=red
#if typeset -f kubeoff > /dev/null; then
#  echo there is a foo function
#  kubeoff -g
#fi



#zplugin ice svn wait'0' lucid
#zplugin light zpm-zsh/title
#PROMPT_TITLE=`print -P %~`
#zplugin ice svn wait'0' lucid
#zplugin light bonnefoa/kubectl-fzf
bindkey "^T" history-incremental-search-backward

_show_title(){
  echo -ne '\033]0;'
  print -P %~
  echo -ne '\007'
}

_show_title
precmd_functions+=(_show_title)

export SHOW_AWS_PROMPT=true
eval "$(jump shell zsh --bind=z)"

