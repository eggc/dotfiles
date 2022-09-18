export HISTSIZE=10000
export SAVEHIST=50000
export EDITOR=emacsclient
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt hist_no_store
setopt share_history   # 異なるタブの間でもコマンド履歴を共有する
setopt no_flow_control # フロー制御文字のキーバインドを外して control+s などを使えるようにする

autoload -Uz colors && colors
autoload -U compinit && compinit
