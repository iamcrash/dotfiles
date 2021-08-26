# Alias ISO timestamp
alias getiso='date +"%Y-%m-%dT%H:%M:%S%z"'

# Local Timezone
export TZ='America/Chicago'

# Function to safely append to file with iso time
append(){
    prefix="\n\n\n/*\n$(getiso)\n*/\n"

    if [[ "$1" = "pbpaste" ]]; then
        echo "${prefix}$(pbpaste)" >> $2
    else
        echo "${prefix}$1" >> $2
    fi
}

