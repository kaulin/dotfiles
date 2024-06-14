> [!WARNING]
> To anyone in general, but fellow 42 students in particular: when faced with a problem, it is always better to attempt solving it first alone without consulting the previous works of others. Your precursors were no smarter than and just as fallible as you; Blindly following their footsteps will only lead you on the same detours they took and prevent you from seeing new, faster routes along the way.

# dotfiles
A repository to keep all my configutarion files backed up and accessible. Contains two shell scripts that can be used to set up easy configuration syncing.

## Installation
Set up a git repository for your configuration files. Copy the shell scripts to said repository. In both files, modify the DIR variable to match the location of your repository. In dotfiles_backup.sh name all the files from your home directory that you want to backup.

## Usage
Make sure both scripts have executable permissions. Run dotfiles_backup.sh with bash to copy specified configuration files to the repository directory, commit the changes and push. Run dotfiles_update.sh with bash to pull any changes from the repository and copy these to your home folder. Setup aliases for easier use.