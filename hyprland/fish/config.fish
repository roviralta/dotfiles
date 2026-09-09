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

# ==========================================================
# Prompt Personalizado con soporte Git
# ==========================================================
function fish_prompt
    set -l last_status $status

    set -l color_user 89b4fa
    set -l color_path fab387
    set -l color_arrow cba6f7

    # Color verde para la rama de Git
    set -g __fish_git_prompt_color_branch a6e3a1

    # 1. Imprime usuario y ruta
    echo -n (set_color $color_user)(whoami)(set_color normal)" "(set_color $color_path)(pwd)(set_color normal)

    # 2. Imprime la rama de Git (si estás en un repositorio)
    echo -n (fish_git_prompt)

    # 3. Espacio final y flecha según si el comando anterior falló
    echo -n " "
    if test $last_status -eq 0
       echo -n (set_color $color_arrow)"> "(set_color normal)
    else
       echo -n (set_color f38ba8)"> "(set_color normal)
    end
end

function fish_greeting
end

# ==========================================================
# Ejecución al abrir terminal
# ==========================================================
fastfetch --disable-linewrap true --logo arch_small --logo-padding-right 3
echo
echo
