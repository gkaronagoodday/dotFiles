#!/usr/bin/zsh

DOTGIT=~/Projects/dotFiles
STARTPATH=$PWD

## rsync dot files to git repo

rsync -az ~/.bashrc $DOTGIT
rsync -az ~/.calcurse $DOTGIT
rsync -az ~/.dosbox $DOTGIT
rsync -az ~/.gitconfig $DOTGIT
rsync -az ~/.links $DOTGIT
rsync -az ~/.ncmpcpp $DOTGIT
rsync -az ~/.newsboat $DOTGIT
rsync -az ~/.oh-my-zsh $DOTGIT
rsync -az ~/.vim $DOTGIT
rsync -az ~/.vim $DOTGIT
rsync -az ~/.vimrc $DOTGIT
rsync -az ~/.viminfo $DOTGIT
rsync -az ~/.irssi $DOTGIT
rsync -az ~/.xboardrc $DOTGIT
rsync -az ~/.Xdefaults $DOTGIT
rsync -az ~/.zshrc $DOTGIT
rsync -az ~/.zshrc.pre-oh-my-zsh $DOTGIT

## rysync scripts dir

rsync -az ~/Scripts $DOTGIT

## git add and commit

cd $DOTGIT
git add *
git add .

git commit -m $(date +%y.%m.%d-%H:%M:%S)

## git pushes

git push github master

## return to original path
cd $STARTPATH

