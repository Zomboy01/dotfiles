#User Dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

#clean $HOME
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export ZDOTDIR="$HOME/.config/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export CARGO_HOME="$XDG_DATA_HOME"/cargo

#Local Bin
export PATH="$HOME/.local/bin:PATH"
