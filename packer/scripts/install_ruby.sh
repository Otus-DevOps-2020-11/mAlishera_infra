#!/bin/bash -e

echo "Update"
	apt-get update -y
	sleep 10

echo "Install Ruby"
	apt-get install -y ruby-full ruby-bundler build-essential
	sleep 10

	apt-get update -qq
	apt-get install -qq git -y

echo "Check install"
	ruby -v
	bundler -v
