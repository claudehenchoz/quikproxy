# Installation
Tested on Debian 8.1

    apt-get -y install tinyproxy python-bottle git tmux
    git clone https://github.com/claudehenchoz/quikproxy.git

# Configuration

Change the key on line 4 of quikproxy.py:

    masterkey = "your desired passphrase"

Users will use this passphrase to allow single IP addresses to use the proxy provided by tinyproxy.

# Starting
Use a tmux session so you can disconnect while it runs (run `tmux` to create a new session, then after a reconnect, use `tmux a` to reattach to the session). 

This is probably insecure, as it requires the root account to run the "development"-webserver. You have been warned.

    python quikproxy.py
