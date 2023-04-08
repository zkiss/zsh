# idea launch script hijacks terminal if idea not running yet
# solution is to launch idea script as background process and redirect output to /dev/null
# set IDEA_CMD value
# export IDEA_CMD=~/apps/idea/bin/idea.sh

if [ ! -z "$IDEA_CMD" ]; then
  # function in order to have precedence over path
  function idea() {
    fork "$IDEA_CMD" "$@"
  }
fi
