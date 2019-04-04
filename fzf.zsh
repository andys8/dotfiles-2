# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/cezar/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/cezar/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/cezar/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/cezar/.fzf/shell/key-bindings.zsh"

