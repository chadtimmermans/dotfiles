# Bash Functions
# ===============


search ()  # search using firefox (defaults to google)
{
    search=""
    for term in $@; do
        search="$search $term"
    done
    firefox -search "$search" > /dev/null 2>&1 &
}

define ()  # define a word with firefox (defaults to google)
{
    word=""
    for term in $@; do
        word="$word $term"
    done
    firefox -search "define $word" > /dev/null 2>&1 &
}
