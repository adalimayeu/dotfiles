# DOCKER aliases
alias docker="podman"
alias dcom="docker-compose"

# DOCKER env variables
export DOCKER_HOST="unix://$HOME/.local/share/containers/podman/machine/podman.sock"
export DOCKER_BUILDKIT=0

# Docker container oneshots.
# Usage: dockrun, or dockrun [centos7|fedora27|debian9|debian8|ubuntu1404|etc.]
dockrun() {
 docker run -it geerlingguy/docker-"${1:-ubuntu2204}"-ansible /bin/bash
}

# Enter a running Docker container.
function denter() {
 if [[ ! "$1" ]] ; then
     echo "You must supply a container ID or name."
     return 0
 fi
 docker exec -it $1 bash
 return 0
}
