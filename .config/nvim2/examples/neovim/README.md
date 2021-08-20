https://www.reddit.com/r/neovim/comments/mi35nz/developing_inside_docker_with_coc_and_neovim/

# View docker compose Config
docker compose config

# Env
echo "UID=$(echo $UID)\nGID=$(echo $GID)" >> .env


# Example of redirecting heredoc
cat << EOF > file.txt
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF


cat << EOF >> .env
GIT_USERNAME=$(git config --get user.name)
GIT_EMAIL=$(git config --get user.email)
EOF





# Running docker compose
# The UID and GID are needed to ensure that the files written to your file system are not owned by root but by your user and group.
UID=$UID GID=$GID docker-compose build

# Build with no cache
UID=$UID GID=$GID docker-compose build --no-cache

# Interative terminal
docker-compose run --rm editor zsh
UID=$UID GID=$GID docker-compose run --rm editor zsh

echo "GIT_USERNAME=$(git config --get user.name)\nG=$(echo $GID)" >> .env

