#!/usr/bin/env bash

MIGRATED_MASTER=$(git branch | grep main)
if [ -z $MIGRATED_MASTER ]; then
	git checkout master
	git branch -m master main
	git symbolic-ref refs/heads/master refs/heads/main
fi
