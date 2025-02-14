# Start sway at login
if status is-login
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
        set -Ux XDG_CURRENT_DESKTOP sway
        set -Ux XDG_SESSION_DESKTOP sway
        set -Ux XDG_SESSION_TYPE wayland
        set -Ux WLR_NO_HARDWARE_CURSORS 1
        dbus-update-activation-environment XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP XDG_SESSION_TYPE
        systemctl --user import-environment XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP XDG_SESSION_TYPE
        exec sway
    end
end

function fish_greeting; end

if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose "Rosé Pine Moon"
    alias vim=nvim
end

set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH $HOME/.cargo/bin
set -Ux EDITOR nvim
set -Ux VISUAL nvim
