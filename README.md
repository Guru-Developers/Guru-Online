# Guru-Online
####Basic Branching Notes:

When making changes to the site, in order to preserve the original file until changes are reviewed and approved we will create branches off of the main file.  The main copy of the file is called master and is the branch that all other branches can be traced back to and will eventually rejoin to create the final copy of our project.
* To see what branches currently exist enter ‘git branch’ into the terminal.
* To switch to a branch or to create a new branch off of whatever branch you are currently on, enter ‘git checkout –b branchName’ into your terminal.  If you are creating a new branch, this branch will be a copy of the branch from where it came.  You can then make changes to the code without risk of loosing the original copy.
* You should periodically save your work on the branch by adding your changes to the branch you are currently on.  You can do this by entering ‘git add .’ or ‘git add namesOfFilesYouChanged’ into the terminal and then entering ‘git commit –m “comment about what you changed in the files.”’
* When you are satisfied with the changes on your branch and your branch has been reviewed and approved, you can push it back to the origin by entering ‘git push origin branchName.’
* You can then go on github and compare changes. Have the origin as your base branch and your new branch as your compare branch.  You can add comments to these changes and create a pull request.  Use the @ symbol before the usernames of everyone in the group in your comment so that they are notified that they should review your changes.
* When your changes are approved you can merge the branches.
* You should then go back to your terminal and do a ‘git pull’ to update it.
* Finally you can delete the branch you merged by entering ‘git branch –D branchName.’
