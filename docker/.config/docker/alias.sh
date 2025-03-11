# source: https://gist.github.com/jgrodziski/9ed4a17709baad10dbcd4530b60dfcbb
# slightly modified for personal preference

function drmcs-fn {
       docker rm $(docker ps --all -q -f status=exited)
}

alias dcu="docker compose up -d"
alias dcd="docker compose down"

alias drmcs=drmcs-fn

alias dim="docker images"
alias dps="docker ps"
alias drun="docker run"
