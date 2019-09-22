#!/bin/bash
vi webapp/src/main/webapp/index.jsp
git add .
git commit -m "Made changes to index file."
git push origin master 

#You can store your credentials using the following command
#$ git config credential.helper store
#$ git push http://example.com/repo.git
#Username: <type your username>
#Password: <type your password
