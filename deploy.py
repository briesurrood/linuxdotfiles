#!/usr/bin/python3
import os
import subprocess

home = os.path.expanduser("~")
dotfiles_directory = os.getcwd()
special_files = ("README.md", "deploy.py", ".config", ".git", ".gitignore")
directories_to_create = [os.path.join("", *each) for each in
                         [(home, ".backup.d"), (home, ".vim", "bundle")]]
git_details = {}

git_details[os.path.join(home, ".vim", "bundle")] = \
    [
    "https://github.com/ctrlpvim/ctrlp.vim",
    "https://github.com/tpope/vim-surround",
    "https://github.com/mbbill/undotree",
    "https://github.com/xolox/vim-misc",
    "https://github.com/Lokaltog/vim-easymotion",
    "https://github.com/tmhedberg/matchit",
    "https://github.com/dahu/vimple",
    "https://github.com/junegunn/fzf",
    "https://github.com/tpope/vim-repeat"
]


def build():
    #TODO Better way of doing?
    create_symlinks(os.listdir("."), dotfiles_directory, home)
    create_symlinks(os.listdir(".config"),
                    os.path.join(dotfiles_directory, ".config"),
                    os.path.join(home, ".config"))
    create_directories(directories_to_create)
    git_clone(git_details)


def create_directories(directories):
    for each in directories:
        # TODO Better way of try catching?
        try:
            os.mkdir(each)
            print("%s created" % (each))
        except FileExistsError:
            print("%s exists" % (each))


def create_symlinks(files, source_path, destination_path):
    for each in files:
        if each in special_files:
            continue
        try:
            source = os.path.join(source_path, each)
            os.symlink(source, os.path.join(destination_path, each))
            print("%s created" % (each))
        except FileExistsError:
            print("%s exists" % (each))


def git(*args):
    return subprocess.check_call(['git'] + list(args))


def git_clone(git_details):
    for folder in git_details:
        os.chdir(folder)
        for url in git_details[folder]:
            git("clone", url)

if __name__ == "__main__":
    print("Building. Please wait...")
    build()
    print("Build has been completed.")
