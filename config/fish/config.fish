if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

alias llth='ls -lt | head'
alias limg='ls -t | head -n 1 | xargs gwenview'
alias weather='curl wttr.in/Praha'

export WEBKIT_DISABLE_DMABUF_RENDERER=1
