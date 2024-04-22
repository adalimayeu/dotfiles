# Create a new directory and enter it
mkd() {
    mkdir -p "$@" && cd "$@"
}

# Weather
weather() {
    curl -s "https://wttr.in/${1:-Batumi}?m2F&format=v2"
}

# Get an information of IP address
ip-address() {
    curl -s -H "Accept: application/json" "https://ipinfo.io/${1:-}" | jq "del(.loc, .postal, .readme)"
}

# Delete a given line number in the known_hosts file.
knownrm() {
 re='^[0-9]+$'
 if ! [[ $1 =~ $re ]] ; then
   echo "error: line number missing" >&2;
 else
   sed -i '' "$1d" ~/.ssh/known_hosts
 fi
}

jwtdec() {
  echo "$1" | jq -R 'split(".") | select(length > 0) | .[0],.[1] | @base64d | fromjson'
}
