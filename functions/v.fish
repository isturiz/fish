function v
    if test (count $argv) -eq 0
        nvim .
    else
        nvim $argv
    end
end
