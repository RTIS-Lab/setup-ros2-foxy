#!/bin/sh
set -e
bash installROS2
bash installColcon.sh
bash installRosDep.sh
bash setupDriverStack.sh
