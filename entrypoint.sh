#!/bin/bash

# Copy files
rsync -a --inplace /data/workspace/ /workspace 2>/dev/null
chown -Rf runner /workspace

exec gosu runner "$@"
