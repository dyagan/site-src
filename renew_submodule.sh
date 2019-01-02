#!/bin/bash

# first remove submodule
# see discussion at https://gist.github.com/myusuf3/7f645819ded92bda6677
rm -rf ./public
git submodule deinit public
git rm public
rm -rf ./.git/modules/public

# add submodule again
git submodule add -b master --force git@github.com:dyagan/dyagan.github.io.git public
