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

fpath+=( $HOME/.local/src/depot_tools/zsh-goodies )
source "${ZPLGM[BIN_DIR]}/zplugin.zsh"

module_path+=( "$HOME/.local/src/zplugin/zmodules/Src" )
zmodload zdharma/zplugin

zinit nocompletions for \
    OMZ::lib/directories.zsh \
    OMZ::lib/git.zsh

zplugin ice blockf
zplugin snippet OMZ::lib/completion.zsh

zinit for \
    OMZ::lib/grep.zsh \
    OMZ::lib/functions.zsh \
    OMZ::lib/history.zsh \
    OMZ::lib/key-bindings.zsh \
    OMZ::lib/misc.zsh \
    OMZ::lib/prompt_info_functions.zsh \
    OMZ::lib/spectrum.zsh \
    OMZ::lib/theme-and-appearance.zsh \
    OMZ::plugins/colorize/colorize.plugin.zsh \
    OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh \
    OMZ::plugins/svn-fast-info/svn-fast-info.plugin.zsh \
    OMZ::plugins/command-not-found/command-not-found.plugin.zsh \
    OMZ::plugins/git/git.plugin.zsh

zplugin ice blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait'!2' atload'_zsh_autosuggest_start' lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait"!1" atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

setopt promptsubst
zplugin snippet OMZ::themes/gallois.zsh-theme

for f in $HOME/.local/etc/zsh/zsh-completions.d/_* ; do
    zplugin ice as"completion"
    zplugin snippet $f
done
unset f
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
alias dnfwp="dnf -C repoquery --whatprovides"
alias chmx="chmod +x"
alias gopen="xdg-open"
alias java11="$HOME/.local/java/jdk-11/bin/java"
alias java11-scaled="env GDK_SCALE=2 $HOME/.local/java/jdk-11/bin/java"
alias java8="$HOME/.local/java/jdk-8/bin/java"
alias java8-scaled="env GDK_SCALE=2 $HOME/.local/java/jdk-8/bin/java"
alias ping5="ping -c 5"
alias ls='lsd --color=always --icon-theme=fancy --icon=always'

_git-format-patch-chrome() { _git-format-patch; }

