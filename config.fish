if status is-interactive
    # Commands to run in interactive sessions can go here
    # set PATH /usr/local/bin $PATH
    set -gx PATH /opt/homebrew/bin $PATH
    # if command -q zellij
    #     eval (zellij setup --generate-auto-start fish | string collect)
    # else
    #     echo "zellij no está disponible en el PATH."
    # end

    function update_env_paths --on-event fish_prompt
        set -l new_path (string split ':' -- $PATH | grep -v 'docker-odoo-16/scripts' | grep -v 'docker-odoo-17/scripts')
        set -x PATH (string join ':' $new_path)

        set -l workspace "$HOME/workspace"

        if string match -q "*docker-odoo-16*" $PWD
            set -x PATH $workspace/docker-odoo-16/scripts $PATH
            alias odoo="$workspace/docker-odoo-16/odoo"
        else if string match -q "*docker-odoo-17*" $PWD
            set -x PATH $workspace/docker-odoo-17/scripts $PATH
            alias odoo="$workspace/docker-odoo-17/odoo"
        else
            functions -e odoo 2>/dev/null
        end
    end
end

# Carga Homebrew environment
# eval "$(/opt/homebrew/bin/brew shellenv)"

# Carga nvm.fish
if type -q nvm
    nvm use latest > /dev/null 2>&1
end

# Establece variables de entorno
set -x HOMEBREW_NO_ENV_HINTS 1
set -Ux EDITOR nvim
set -Ux VISUAL nvim

# Created by `pipx` on 2025-02-23 01:22:51
set PATH $PATH /home/isturiz/.local/bin

