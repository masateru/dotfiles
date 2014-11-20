### ~/.zshrc

# オリジナル設定
source ~/.zsh.d/zshrc

# これより↓に自分用の設定を書く。

# gd コマンドで過去行ったディレクトリの履歴を呼び出す
setopt autopushd
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

# コマンド入力中に^で親ディレクトリに移動
function cdup() {
   echo
   cd ..
   zle reset-prompt
}
zle -N cdup
bindkey '\^' cdup

# myabbrevで設定した省略の後にスペースで、自動的に目的のコマンドに変換
# ref:http://homepage1.nifty.com/blankspace/zsh/zsh.html
typeset -A myabbrev
myabbrev=(
    "pb"    "| pbcopy"
    "tz"    "tar zxvf "
    "tzc"   "tar zcvf "
    "tj"    "tar jxvf "
    "tjc"   "tar jcvf "
)
my-expand-abbrev() {
    local left prefix
    left=$(echo -nE "$LBUFFER" | sed -e "s/[_a-zA-Z0-9]*$//")
    prefix=$(echo -nE "$LBUFFER" | sed -e "s/.*[^_a-zA-Z0-9]\([_a-zA-Z0-9]*\)$/\1/")
    LBUFFER=$left${myabbrev[$prefix]:-$prefix}" "
}
zle -N my-expand-abbrev
bindkey " "  my-expand-abbrev
