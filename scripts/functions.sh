#!/usr/bin/env bash

get_workflows () {
	find . -path '*/.github/workflows/*' -type f -name '*.yml' -print0 \
	| xargs -0 rg --no-filename "uses:" |sed 's/\- uses:/uses:/g' \
	| tr '"' ' ' | awk '{print $2}' | sed 's/\r//g' \
	|sort |uniq --count | sort --numeric-sort
}

#get_workflows
