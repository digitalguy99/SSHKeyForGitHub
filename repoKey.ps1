#!/usr/bin/env pwsh

cd ~/.ssh/
ssh-keygen -t rsa -b 4096 -f mygithubkey -P '""'
Start-Service ssh-agent
echo "`nHost github.com`n  IdentityFile ~/.ssh/mygithubkey" >> ~/.ssh/config
ssh-add mygithubkey
type ~/.ssh/mygithubkey.pub | clip
