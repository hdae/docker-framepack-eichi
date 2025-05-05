#!/bin/bash

# User config
chown -R appuser /workspace
rsync -av /.workspace/ /workspace

exec gosu appuser "$@"
