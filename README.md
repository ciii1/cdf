# cdf
cdf is a bash command that utilizes fzf to search directories recursively and then utilizes cd to navigate to the selected path.
It is made to let user navigate through directories easily without much complications that programs like zoxide and autojump have.

## Installation
First, make sure you have all the requirements:
- fzf
- cd
While cd is most likely already available in your system, you can install fzf in most package management tools.
For example, to install fzf on a Debian-based system, you can use the command:
```
sudo apt install fzf
```
or on an Arch-based system:
```
sudo pacman -S fzf
```

Next, you're ready to make cdf available in your system. The "installation" is straightforward. 
Open the bashrc file in this repository and append its content to your own bashrc file.

Done, you're ready to use cdf.

## Usage
cdf takes two arguments, respectively:
- The query to search
- The directory to perform search on

For example, to search a directory with the path `~/foobar/foo/bar/` and navigate to it while you're in the home directory:
```
cdf bar
```
A list of possible paths to navigate to will be shown. Select "/home/user/foobar/foo/bar/" and you're now in the directory.

Suppose if you're in a different directory, say `~/different_dir/" and you want to navigate to "~/foobar/foo/bar":
```
cdf bar ~/
```

## License
It is licensed under the WTFPL lisence.
