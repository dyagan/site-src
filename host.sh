## Check whether port is in use. Needs additional tests.
if (( $( netstat -anp tcp | grep LISTEN | grep -c $2 ) > 0 )); then 
    printf "\nPort is unavailable. Choose new port.\n"
    exit
fi

## Check whether already on branch. If so, host from there.
## If not, worktree branch, cd, then host.
printf "\nHosting site branch $1 at localhost:$2 from directory...\n"

if (( $(git status | grep -c "On branch $1") > 0 )); then
    pwd
    hugo server -p $2
else
    ## Not on branch
    ## Assumes branch already exists
    git worktree add ../temp_$1 $1 > /dev/null 
    pushd ../temp_$1 &> /dev/null 
    pwd

    hugo server -p $2

    ## Clean up
    printf "\nCleaning up\n"

    popd > /dev/null
    rm -rf ../temp_$1
    git worktree prune
fi
