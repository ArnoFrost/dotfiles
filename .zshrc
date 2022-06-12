# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="$RANDOM_THEME"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
# source ~powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

 [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

 #===================代理配置=====================
# proxy
function setProxy(){
 export http_proxy=http://127.0.0.1:7890
 export https_proxy=http://127.0.0.1:7890
 export all_proxy=socks5h://127.0.0.1:7890

 git config --global http.proxy http://127.0.0.1:7890
 git config --global https.proxy http://127.0.0.1:7890
 npm config set proxy=http://127.0.0.1:7890
 npm config set https-proxy=http://127.0.0.1:7890
    # git config --global http.proxy socks5h://127.0.0.1:7890
    # git config --global https.proxy socks5h://127.0.0.1:7890
}

function setProxyLocal(){
 export http_proxy=http://192.168.2.1:7890
 export https_proxy=http://192.168.2.1:7890
 export all_proxy=socks5h://192.168.2.1:7890

 git config --global http.proxy http://192.168.2.1:7890
 git config --global https.proxy http://192.168.2.1:7890
 # git config --global http.proxy socks5h://192.168.2.1:7890
 # git config --global https.proxy socks5h://192.168.2.1:7890
}

function unsetProxy(){
 unset http_proxy
 unset https_proxy
 unset all_proxy

 git config --global --unset http.proxy
 git config --global --unset https.proxy

 npm config delete proxy
 npm config delete https-proxy
}
#动态开启关闭代理
alias setproxy=setProxy
alias setproxylocal=setProxyLocal
alias unsetproxy=unsetProxy

#快速编辑
#sublime
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl:$PATH"
alias sublime="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias subz="sublime ~/.zshrc"
alias subg="sublime ~/.gitconfig"
alias subb="sublime ~/.bash_profile"
alias sz="source ~/.zshrc"
alias sb="source ~/.bash_profile"



#===================代理配置=====================
# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
export all_proxy=socks5h://127.0.0.1:7891

# git config --global http.proxy http://127.0.0.1:7890
# git config --global https.proxy http://127.0.0.1:7890
# git config --global http.proxy socks5h://127.0.0.1:7891
# git config --global https.proxy socks5h://127.0.0.1:7891

#git config --global --unset http.proxy
#git config --global --unset https.proxy




#===================代理配置=====================^
#===================代理配置=====================^



#===================工作相关=====================
#===================工作相关=====================

# alias sinalog=logcat | grep -F "adb shell ps | grep com.sina.news  | tr -s [:space:] ' ' | cut -d' ' -f2"
# alias sinalog=logcat 'com.sina.news:I *:S'
# alias logcat=logcat-color
# alias clog=logcat-color
# adb
showAdbLog(){
   adb logcat -v threadtime | grep -iE $1
}
alias adbg=showAdbLog
saveAdbLog(){
   adb logcat -v threadtime | grep -iE $1 > $2.txt
}
alias adbs=saveAdbLog
teeAdbLog(){
   adb logcat -v threadtime | grep -iE $1 | tee $2.txt
}
alias adbt=teeAdbLog

alias adbl=adb logcat -v threadtime
export "PATH=$PATH:/Users/xuxin14/Library/Android/sdk/platform-tools"
export "PATH=$PATH:/Users/xuxin14/Library/Android/sdk/tools"
alias ng="./ngrok -config ngrok.conf start"
# 模拟导航
# alias monitorNavi='adb shell am start com.ileja.lite/com.ileja.carrobot.navigation.NaviSettingActivity'
# 火线检查
# alias fireline='java -jar ~/Desktop/firelogcat/fireline_1.6.11.jar'

alias adbs=adb shell input keyevent 26

updateHb(){
   python /Users/xuxin14/PycharmProjects/pythonProject/utils/AutoAddArticleTemplateScript.py $1
}

updateHb2(){
   # 替换根目录
   project_root=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

   download_url=$1
   rebase_branch_name="devTrunk"
   temp_root="/Users/xuxin14/Desktop/Temp"
   python /Users/xuxin14/PycharmProjects/pythonProject/utils/FastReplaceTemplateScript.py $download_url $rebase_branch_name $project_root $temp_root
}
alias updatehb=updateHb2

fastMerge(){
   need_merge_branch=$1
   project_path=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
   # echo "当前工作目录 :$project_path "
   python /Users/xuxin14/PycharmProjects/pythonProject/utils/GitFastMergeScript.py $project_path $need_merge_branch
}
alias fastmerge=fastMerge

#快速merge 原版
fastMegeO(){
   python /Users/xuxin14/PycharmProjects/pythonProject/utils/GitFastMergeScript.py /Users/xuxin14/Desktop/SinaProjects/SinaNews $1
}
alias fmo=fastMegeO

#快速merge 副本
fastMergeC(){
   python /Users/xuxin14/PycharmProjects/pythonProject/utils/GitFastMergeScript.py /Users/xuxin14/Desktop/SinaProjects/SinaNews的副本 $1
}
alias fmc=fastMergeC
export PATH="/Users/xuxin14/Desktop/Develop/drafts:$PATH"
#===================工作相关=====================^
#===================工作相关=====================^



#===================git=====================
#===================git=====================
alias clog='conventional-changelog -p angular -i CHANGELOG.md -s'

# gac(){
#    git add --all && git commit -m $1
# }
# alias gac=gac
# source ~/.fzf/shell/zsh-interactive-cd.plugin.zsh
#===================git=====================^
#===================git=====================^
#===================flutter=====================
#===================flutter=====================
export PATH=$PATH:/Users/xuxin14/FlutterProject/flutter_sdk/3.0.0/flutter/bin
export NO_PROXY=localhost,127.0.0.1,::1
# export FLUTTER_ROOT=/opt/fvm/current
# export FVM_HOME=/opt/fvm

# export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
# export PUB_HOSTED_URL=https://pub.flutter-io.cn

# export PATH=$PATH:$HOME/.pub-cache/bin
# export PATH=$PATH:$HOME/.pub-cache/bin/fvm
# export PATH=$PATH:$FLUTTER_ROOT/bin/cache/dart-sdk/bin
# export PATH=$PATH:$FLUTTER_ROOT/bin
#===================flutter=====================^
#===================flutter=====================^

#===================自定义快捷方式=====================
#===================自定义快捷方式=====================

#=======特殊自定义=======
alias py="python3"
# 查找文件
fzfp() {
fzf --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500'
}
alias tt='fzf --preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500'"'"
# 显示path中的每个值
alias path='echo -e ${PATH//:/\\n}'
# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
# alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
#=======特殊自定义=======^

# 方便跳转
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
# 快捷跳转
#alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dp="cd ~/Desktop/projects"
alias geek="cd ~/geek"
# 快速编辑
alias sublime="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias subz="sublime ~/.zshrc"
alias subg="sublime ~/.gitconfig"
alias subb="sublime ~/.bash_profile"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#===================自定义快捷方式=====================^
#===================自定义快捷方式=====================^

#===================系统配置=====================
#===================系统配置=====================

# ========= ls ==============
# Detect which `ls` flavor is in use
# 决定 'ls' 样式
if ls --color > /dev/null 2>&1; then # GNU `ls`
   colorflag="--color"
   export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
   colorflag="-G"
   export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"
# List all files colorized in long format, excluding . and ..
alias la="ls -lAF ${colorflag}"
# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
# Always use color output for `ls`
alias ls="command ls ${colorflag}"
# ========= ls ==============^


# grep
# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Get week number
alias week='date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# macOS has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# macOS has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# JavaScriptCore REPL
jscbin="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
[ -e "${jscbin}" ] && alias jsc="${jscbin}";
unset jscbin;

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# Airport CLI alias
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
   alias "${method}"="lwp-request -m '${method}'"
done

# Make Grunt print stack traces by default
command -v grunt > /dev/null && alias grunt="grunt --stack"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 100'"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# 删除会到垃圾桶
# alias rm="trash"
# 历史记录显示时间
alias history='fc -il 1'
#更新搜索数据库
alias updatedb='/usr/libexec/locate.updatedb'
#===================系统配置=====================^
#===================系统配置=====================^


#!/usr/bin/env bash
# Author    : 蛙鳜鸡鹳狸猿
# create_ts : 2019-06-06
# program   : Convert DOS/Mac text file format into Unix
 
 
function dos_to_unix() {
    # Convert DOS/Mac text file format into Unix under built-in `dos2unix` handler.
        # $1: OS directory path
    local path="$1"
    local path=${path%/}
    local IFS=$'\n'
    # shellcheck disable=SC2045
    for obj in $(ls "${path}")
    do
        if [[ -d "${path}/${obj}" ]]; then
            dos_to_unix "${path}/${obj}"
        else
            dos2unix "${path}/${obj}"
        fi
    done
}


source ~/.bash_profile
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"

export ANDROID_HOME="/Users/xuxin14/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:/Users/xuxin14/Desktop/SinaProjects/arcanist/bin"


export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

alias sp=scrcpy
alias cdplugin=cd $ZSH_CUSTOM/plugins

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/xuxin14/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/xuxin14/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/xuxin14/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/xuxin14/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="/opt/homebrew/opt/php@7.2/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.2/sbin:$PATH"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
