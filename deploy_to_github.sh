#!/bin/bash

rm -rf public \
	&& git submodule update \
	&& cd public && git checkout master \
	&& cd .. && hugo \
	&& cd public \
	&& git add --all \
	&& git commit -m "Regenerate site @ $(date)" \
	&& git push \
	&& cd .. && echo 'Complete'
