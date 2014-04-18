#!/bin/bash

set_term_bgcolor(){
  local R=$1
  local G=$2
  local B=$3
  /usr/bin/osascript <<EOF
tell application "Terminal"
   tell window 0
      set the background color to {$(($R*65535/255)), $(($G*65535/255)), $(($B*65535/255))}
   end tell
end tell
EOF
}
 
set_term_bgcolor 40 0 0
 
ssh $@
 
set_term_bgcolor 0 0 0