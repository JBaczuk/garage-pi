#!/bin/bash
### BEGIN INIT INFO
# Provides:          garage_pi
# Required-Start:    $all
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      
# Description:       Service to start garage_pi server
### END INIT INFO

start() {
  echo "Starting Garage Pi..." ; 

  if [ -z "$(pgrep server)" ]
    then
      /var/opt/garage_pi/./server &
      echo "Garage Pi started!"
  else
    echo "Already Running" ;
  fi
}

stop(){
  echo "Stopping garage pi";
  pkill -f ./server
}

uninstall() {
  echo -n "Are you really sure you want to uninstall this service? That cannot be undone. [yes|No] "
  local SURE
  read SURE
  if [ "$SURE" = "yes" ]; then
    stop
    update-rc.d -f garage_pi remove
    rm -fv "$0"
  fi
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  uninstall)
    uninstall
    ;;
  restart)
    stop
    start
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|uninstall}"
esac