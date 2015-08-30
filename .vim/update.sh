#!/bin/bash
cd ~/.vim/bundle
for i in `ls -d */`; do
  cd "$i"
  git rev-parse --is-inside-work-tree > /dev/null 2>&1
  if [ $? -eq 0 ]
  then    
    echo `pwd`: Git Repo
    git pull
    cd ..
    continue
  fi  
  hg --cwd . root >/dev/null
  if [ $? -eq 0 ]
  then    
    echo `pwd`: Mercurial Repo
    hg pull  
    cd ..
  fi
done
