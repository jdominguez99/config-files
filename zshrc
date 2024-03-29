
function parse_git_branch() {
    branch_name=$(git branch --show-current 2>&1)
    
    if [ $? -ne 0 ]; then
        echo ""
    else
        echo "[${branch_name}]"
    fi

    # git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

setopt PROMPT_SUBST
if [ "$(uname)" = "Darwin" ]; then
    PROMPT='[%n]:%F{blue}%~%f %F{green}$(parse_git_branch)%f %F{red}%%%f '
fi

export CLICOLORS=1
export LSCOLORS="ExFxCxDxBxegedabafacad"
alias ll="ls -alGF"
alias ls="ls -GF"



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
icloud="/Users/juan/Library/Mobile Documents/com~apple~CloudDocs"
export icloud

JAVA_FX="~/Downloads/javafx-sdk-11.0.2/lib"
export JAVA_FX
