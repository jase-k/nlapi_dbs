# Purpose and Overview

This repository uses Liquibase to manage database versions and seeds for nlapi playground and training. 

## Storing and Retrieving large data files: 
All data files should be gzipped prior to being stored in the repository. 

EXAMPLES
       To get started with Git LFS, the following commands can be used.

        1. Setup Git LFS on your system. You only have to do this once per user account:

               git lfs install

        2. Choose the type of files you want to track, for examples all ISO images, with git-lfs-track(1):

               git lfs track "*.iso"

        3. The above stores this information in gitattributes(5) files, so that file needs to be added to the repository:

               git add .gitattributes

        4. Commit, push and work with the files normally:

               git add file.iso
               git commit -m "Add disk image"
               git push