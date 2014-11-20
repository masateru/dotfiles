### ~/.zshenv

# おすすめ設定を読み込む。
source ~/.zsh.d/zshenv

# これより↓に自分用の設定を書く。

umask 022

local GRAY=$'%{\e[0;37m%}'
local LIGHT_GRAY=$'%{\e[0;37m%}'
local WHITE=$'%{\e[1;37m%}'
local LIGHT_BLUE=$'%{\e[1;36m%}'
local YELLOW=$'%{\e[1;33m%}'
local PURPLE=$'%{\e[1;35m%}'
local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'


# emacsのTrampでの動きを正しくする為に ref:http://www.sssg.org/blogs/naoya/archives/764
if [ "$TERM" != "dumb" ]; then
    PROMPT='%m %(!.#.$) '
    RPROMPT='[%~]'
fi


# 補完侯補をEmacsのキーバインドで動き回る
zstyle ':completion:*:default' menu select=1

# 補完の時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完リストの色分け
# http://journal.mycom.co.jp/column/zsh/009/index.html
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# バックグラウンドジョブが終了したらすぐに知らせる。
setopt no_tify
