#!/bin/bash

# SCP the tar from the deploy server to its destination


cd /var/temp

pv $1 | ssh edwin@192.168.1.6 'cat | tar xz --strip-components=1 -C /var/temp'

