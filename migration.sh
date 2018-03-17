GITLAB="repo url here"
DIRECTORY="message-post-service"
BITBUCKET="rep url here"
mkdir $DIRECTORY
cd $DIRECTORY
git init --bare .git                              # create a bare repo
git remote add origin $GITLAB           # add a remote
git fetch origin refs/heads/*:refs/heads/*        # fetch heads
git fetch origin refs/tags/*:refs/tags/*          # fetch tags
git init                                          # reinit work tree
git checkout master                               # checkout a branch
git remote rm origin                              # remove remote repo
git remote add origin $BITBUCKET              # new remote url
git push -u origin master                         # now push master
git push --all                                    # now push all other branches