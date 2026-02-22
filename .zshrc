# PATH
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# Oh My Zsh installation (CachyOS uses system-wide install)
export ZSH="/usr/share/oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)

# --- Custom Aliases ---

alias AirpodsOn="/home/ozdotdotdot/Documents/qol-scripts/./AirpodsOn.sh"
alias AirpodsOff="/home/ozdotdotdot/Documents/qol-scripts/./AirpodsOff.sh"

Airpods() {
    DEVICE="08:FF:44:1F:68:D0"
    STATUS=$(bluetoothctl info $DEVICE | grep "Connected: yes")

    if [ -n "$STATUS" ]; then
        echo "(✓) AirPods are currently connected. To disconnect, type: AirpodsOff"
    else
        echo "(X) AirPods are disconnected. To connect, type: AirpodsOn"
    fi
}

alias chatgpt="google-chrome-stable --app=https://chat.openai.com"
alias caffeinate="systemd-inhibit"
alias pio="/home/ozdotdotdot/.platformio/penv/bin/platformio"
alias lights="curl http://100.122.255.109:8123/api/webhook/togglelights"

alias say="~/Documents/qol-scripts/say.sh"

timer() {
    timerr "$@" && say "Timer done"
}

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# --- Arch Linux NVM initialization ---
source /usr/share/nvm/init-nvm.sh

