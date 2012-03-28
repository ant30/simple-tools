# ant30 most used utils collection


## virt-ip
Get the IP of a virtual machine on libvirt enviroment with bridge-nat network
setting.

### Example:

    $ virt-ip virtualdomain
    192.168.122.101

## monitor-standby
Lock the screen with gnome-screensaver and set yours monitors on standby mode.

## share_this
Share files or directories on your local network vía HTTP. It give an URL and
set  it on your "clipboard" if you have installed xclip on your system.

### Example:

    $ share_this file.pdf
    http://yourhostname:8000/file.pdf
    xclip command isn't found, can't copy uri to clipboard
    Ctrl + C stop the server

## alert-when-finish
Show a inotify alert when is called. If you have beep instaled it can make 
beeps sounds too.

### Example:

    $ rsync very-long-directory new-directory ; alert-when-finish

## clear-pycs
Delete *.pyc and *~ files

## socat-forward-tcp-port
With iptables you can't forward port to loopback interfaces like lo / 127.0.0.1.
You can use "socat" utility to do this or forward to another host/port.

### Example:

    $ socat-forward-tcp-port 192.168.122.101:8000 8000

## socat-tcp-proxy-sniffer
Are you debugging socket communications? you can use tcpdump/ngrep but this are
some complex to get all the data in the communcations. I use this script to
debug http Dovecot <-> Solr communication.

### Example:

    $ socat-tcp-proxy-sniffer 192.168.122.101:8000 8000

## enable-mpx
Add another mouse for "multitouch" simulation
