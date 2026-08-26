#source /usr/share/cachyos-fish-config/cachyos-config.fish

# ==========================================================
# Catppuccin Mocha Theme for Fish Syntax Highlighting
# ==========================================================
set -g fish_color_normal cdd6f4
set -g fish_color_command 89b4fa
set -g fish_color_param f2cdcd
set -g fish_color_keyword f38ba8
set -g fish_color_quote a6e3a1
set -g fish_color_redirection f5c2e7
set -g fish_color_end fab387
set -g fish_color_error f38ba8
set -g fish_color_gray 6c7086
set -g fish_color_selection --background=313244
set -g fish_color_search_match --background=313244
set -g fish_color_operator f5c2e7
set -g fish_color_escape eba0ac
set -g fish_color_autosuggestion 6c7086
set -g fish_color_cancel f38ba8

function fish_prompt
    set -l last_status $status

    set -l color_user 89b4fa
    set -l color_path fab387
    set -l color_arrow cba6f7

    echo -n (set_color $color_user)(whoami)(set_color normal)" "(set_color $color_path)(pwd)(set_color normal)" "
    
    if test $last_status -eq 0
       echo -n (set_color $color_arrow)"> "(set_color normal)
    else
       echo -n (set_color f38ba8)"> "(set_color normal)
    end
end

function fish_greeting
end

fastfetch --disable-linewrap true --logo arch_small --logo-padding-right 3 --structure Title:OS:Kernel:Uptime:CPU:GPU:Memory

echo 
echo 
