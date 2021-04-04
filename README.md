# FreeBSD-Dotfiles

Very basic dots for a fresh install of FreeBSD on the desktop.

## How to install FreeBSD with the xfce4 desktop environment with slim as the display manager.

Follow [these instructions](https://www.youtube.com/watch?v=IqmPPfr_DwY) on YouTube.

## To install doas, the sudo alternative

Log in as root.

```
$ su
```

Enter your password, followed by the command

```
# pkg install doas
```

Edit 'doas.conf' to insert your username in the spaces shown.

Then place the file in /usr/local/etc/

## To change the default shell to bash

Enter the following commands, but with your own username substituted.

```
# pkg install bash
# chsh -s /usr/local/bin/bash [username]
```
