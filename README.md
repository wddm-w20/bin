# Student "bin" scripts

Clone this repository to either your root folder (`~`) or to the folder where you maintain your development projects.

## Project folder

To create and launch a project folder from the command line interface, try the following methods:

### Execute from the `bin` folder

Navigate to the new folder, then execute the following command:

```shell
source project.sh (project-name)
```

### Aliasing `project` globally

To setup the script above to be run from any folder using only the command `project [project-name]`, alias the full command and path to the file, using the following:

```shell
alias project='source (path-to-file)/project.sh'
```

An `alias` will only live for the life of that shell session. To have the above `alias` persist for all future sessions and logins, add the command above to your `.zshrc` (or `.bashrc`) file, usually found in your user's home directory (`~`). 

If the _runtime configuration_ file for your shell does not exist, create it! One create, paste in the `alias`, then either reboot the computer, or execute the file with `source ~/.zshrc` (replace `.zshrc` with the appropriate file for your shell).

