#!/usr/bin/env bash
cd ~/.ssh/
ssh-keygen -t ed25519 -C "brtsuper07@gmail.com" -f githubtime -P "" 
eval "$(ssh-agent -s)" 
echo -e "Host *\n  AddKeysToAgent yes\n  UseKeychain yes\n  IdentityFile ~/.ssh/githubtime" >> ~/.ssh/config
ssh-add -K ~/.ssh/githubtime 
cat ~/.ssh/githubtime.pub | pbcopy
