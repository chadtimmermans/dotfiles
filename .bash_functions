# Bash Functions
# ===============


search ()  # search using firefox (defaults to google)
{
    term=""
    for word in $@; do
        term="$term $word"
    done
    firefox -search "$term" > /dev/null 2>&1 &
}

define ()  # define a word with firefox (defaults to google)
{
    term=""
    for word in $@; do
        term="$term $word"
    done
    firefox -search "define $term" > /dev/null 2>&1 &
}
