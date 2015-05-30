# config

Ce repository contiens les fichiers de configurations de vim et de zsh !

Copier les trois fichiers de configurations dans votre repertoire personnel. 

## ZSH

On installe python

```bash
yaourt -S python python-pip 
```

Ensuite on installe powerline

```bash
pip install powerline-status
```

Et pour finir il faut installer les Fonts de powerline

```bash
yaourt -S oh-my-zsh-powerline-theme-git
```

Attention : Ne pas oublier de lancer powerline-daemon au demarage
## VIM

Vim est un éditeur de text extèmement puissant et je vous canseille vivement d'apprendre à
l'utiliser et le customiser pour que vous soyer à l'aise avec !

Tout d'abord je vous passe un lien qui vous permettra d'installer tout les plugins dont vousaurez
besoin avec VIM.

Voici le site : [vimawesome](http://vimawesome.com/)

Dépendence à installer :

* Gvim
* oh-my-zsh

En premier je vous conseille de commenter dans le fichier de conf de vim tout ce qui à été installer avec NeoBundle.

### Installer NeoBundle

Je ne vais pas vous faire un tuto car il en existe déjà un [ici](https://github.com/Shougo/neobundle.vim). 

je vous conseillerais juste de l'installer manuellement à l'aide du tuto ci-dessus.

### YouCompleteMe

Après avoir installé NeoBundle, décommenter la ligne ou se trouve YouCompleteMe car il est un peu
capricieux à installer.

Après avoir décommenté la ligne, lancer VIM qui va tenter de l'installer et va lamentablement échoué en vous donnant l'excuse de clang.

Si ça marche du premier coup vous n'avez pas besoin de suivre le reste de ce tuto.

Quitter VIM et ensuite aller dans le repertoire ~/.vim/bundle/YouCompleteMe.

```bash
    cd ~/.vim/bundle/YouCompleMe
```

Normalement dans ce repertoire vous devriez trouver le fichier install.sh

lancer le avec cette commande : 

```bash
    ./install.sh --clang-completer
```

Il va telecharger beaucoup de chose et ça risque de prendre du temps, si ça ne fonctionne pas du premier coup lancer le en root vous devriez rencontrer plus de succes.

## tmux

Pour cette partie, vous avez juste à installer tmux a l'aide de la commande :

```bash
    yaourt -S tmux
```

## tmux-powerline

Tmux-powerline permet de configurer la bar de tmux qui affichera : la météo, la musique, vos mail et l'état de la batterie.

Pour configurer tmux-powerline suivre ce [lien](https://github.com/erikw/tmux-powerline)

Voila, en éspérant qu'après ça vous ayez un terminal qui vous plait !
