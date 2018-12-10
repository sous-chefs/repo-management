#!/usr/bin/env bash
cd ~/dev/
for x in *; do
(
	echo "$x"
	cd "$x"
	git pull
	sed -i '/.*if github\.pr_labels\.empty\?/,+1d' Dangerfile Dangerfile
	if [ -s Dangerfile ]; then
		echo "Did Stuff"
		git branch danger-remove-labels
		git checkout danger-remove-labels
		git add Dangerfile
		git commit -m "Removed labels requirement from Dangerfile"
		git push -u origin danger-remove-labels
	else
	    	echo "didn't do stuff"
    	fi
)
done
