#!/bin/bash

#scp the rollback package to destination


cd /var/temp

# $1 is filename

#delete contents first
ssh edwin@192.168.1.6 'rm -rf /var/temp/*'

#send new rollback version
pv $1 | ssh edwin@192.168.1.6 'cat | tar xz --strip-components=1 -C /var/temp/*'

