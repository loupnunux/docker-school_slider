#!/bin/bash
cd /usr/src/app
export SECRET_KEY_BASE=$(rake secret)
rake db:migrate assets:precompile
rm /tmp/server.pid
env | grep SECRET
rails server -b 0.0.0.0 -P /tmp/server.pid

