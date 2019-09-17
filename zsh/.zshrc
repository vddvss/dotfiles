_src_local_profile()
{
    emulate -L ksh
    if [[ ! -o login ]]; then
        . ~/.profile
    fi
}
_src_local_profile

unset -f _src_local_profile

declare -A ZPLGM  # initial Zplugin hash definition; use before loading Zplugin
ZPLGM[BIN_DIR]="$HOME/.local/src/zplugin"
ZPLGM[HOME_DIR]="$HOME/.local/etc/zsh/zplugin"
ZPLGM[COMPINIT_OPTS]=-C

source "${ZPLGM[BIN_DIR]}/zplugin.zsh"

module_path+=( "${ZPLGM[BIN_DIR]}/zmodules/Src" )
zmodload zdharma/zplugin

zplugin ice nocompletions
zplugin snippet OMZ::lib/directories.zsh
zplugin ice nocompletions
zplugin snippet OMZ::lib/git.zsh

zplugin ice blockf
zplugin snippet OMZ::lib/completion.zsh
zplugin snippet OMZ::lib/grep.zsh
zplugin snippet OMZ::lib/functions.zsh
zplugin snippet OMZ::lib/history.zsh
zplugin snippet OMZ::lib/key-bindings.zsh
zplugin snippet OMZ::lib/misc.zsh
zplugin snippet OMZ::lib/prompt_info_functions.zsh
zplugin snippet OMZ::lib/spectrum.zsh
zplugin snippet OMZ::lib/theme-and-appearance.zsh

zplugin snippet OMZ::plugins/colorize/colorize.plugin.zsh
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/svn-fast-info/svn-fast-info.plugin.zsh
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

zplugin ice blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait"0" lucid
zplugin light zdharma/zui
zplugin ice wait"1" lucid
zplugin light zdharma/zplugin-crasis

zplugin ice wait'!2' atload'_zsh_autosuggest_start' lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait"!1" atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

setopt promptsubst
zplugin snippet OMZ::themes/gallois.zsh-theme

autoload -Uz +X bashcompinit && bashcompinit -C

export EDITOR=nvim
HISTSIZE=500000
SAVEHIST=100000

PROMPT_COMMAND='echo -ne "\033]0;\007"'
precmd() { eval "$PROMPT_COMMAND" }

if [[ -n "$SSH_CLIENT" ]]; then
    export PROMPT='%{$fg[cyan]%}[$(uname -n)][%~% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
fi

alias dnfu="sudo dnf upgrade"
alias dnfur="sudo dnf upgrade --refresh"
alias dnfinst="sudo dnf install"
alias dnfs="dnf -C search"
alias dnfi="dnf -C info"
alias dnfrq="dnf -C repoquery"
alias chmx="chmod +x"
alias gopen="xdg-open"
alias java11="$HOME/.local/java/jdk-11/bin/java"
alias java11-scaled="env GDK_SCALE=2 $HOME/.local/java/jdk-11/bin/java"
alias java8="$HOME/.local/java/jdk-8/bin/java"
alias java8-scaled="env GDK_SCALE=2 $HOME/.local/java/jdk-8/bin/java"
alias ping5="ping -c 5"
alias ls='lsd --color=always --icon-theme=fancy --icon=always'

