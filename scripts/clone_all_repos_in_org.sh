#!/bin/bash

curl -s https://api.github.com/orgs/sous-chefs/repos\?per_page\=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'
