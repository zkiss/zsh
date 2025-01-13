# cursor launch script hijacks terminal
# launching cursor as background process and redirect output to /dev/null
# set CURSOR_CMD value
# export CURSOR_CMD=~/apps/cursor-0.44.11x86_64.AppImage\ --no-sandbox

if [ ! -z "$CURSOR_CMD" ]; then
  # function in order to have precedence over path
  function cursor() {
    fork $CURSOR_CMD "$@"
  }
fi
