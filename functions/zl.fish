function zl
    if test (count $argv) -eq 0
        zellij
    else
        zellij $argv
    end
end
