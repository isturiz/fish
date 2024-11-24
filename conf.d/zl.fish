function zl
    if not set -q ZELLIJ
        zellij
    else
        echo "Zellij is already running."
    end
end
