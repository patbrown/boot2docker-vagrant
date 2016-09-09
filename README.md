# PORTABLE DEVELOPMENT ENVIRONMENT

This started as a fork of Boot2docker Vagrant. It is intended to be my own personal development environment used for writing a clojure backed by datomic PRO free application in emacs on Windows 10, OSX, and docker.

[blinkreaction/Boot2dockerVagrant](https://github.com/blinkreaction/boot2docker-vagrant)

## Prerequisites
1. [VirtualBox](https://www.virtualbox.org/) 5.1.x
2. [Vagrant](https://www.vagrantup.com/) 1.8.5+
3. [Babun](http://babun.github.io) - A Linux-type shell + [winpty](https://github.com/rprichard/winpty), **Windows only**

For best result and a clean setup it is recommended to remove any previous versions of VirtualBox, Vagrant, boot2docker, docker and docker-compose.

Automatic **installation** and **updates** of prerequisites is available via the one-liners below.  
**Make sure to stop all VirtualBox VMs prior to performing updates.**

Note: If you already have brew/cask and necessary versions of VirtualBox and Vagrant installed, 
prefer to install them manually or would like to not update these components automatically, 
prefix the command with `B2D_INSTALL_MODE=docker `.

**Mac**

Prerequisites are installed using **brew/cask** (brew and cask will be installed if missing).

    bash <(curl -s https://raw.githubusercontent.com/blinkreaction/boot2docker-vagrant/master/scripts/presetup-mac.sh)

**Windows**

**All automated scripts and instructions in this project assume using Babun shell and are not tested with other shells.**

Prerequisites are installed using **babun** and **chocolatey** (chocolatey will be installed if missing).

    bash <(curl -s https://raw.githubusercontent.com/blinkreaction/boot2docker-vagrant/master/scripts/presetup-win.sh)


<a name="setup"></a>
## Setup and usage

### Automatic installation

Designate a root folder that the VM will have access to (e.g. `~/Projects`) and run there:

    bash <(curl -s https://raw.githubusercontent.com/blinkreaction/boot2docker-vagrant/master/scripts/setup.sh)

### Manual installation

Use these steps if you have VirtualBox and/or Vagrant already installed or prefer/need to install them manually.

1. Copy `Vagrantfile` and `vagrant.yml` into a designated folder
2. Inside the folder run

    ```
    vagrant up
    ```

3. Verify your setup by checking docker client and server versions
    
    ```    
    docker version
    ```
4. Install tmux, emacs, git, wget, curl, jre, or any other tool I use in pact, brew, or apt-get.

5. Install stow

6. cd dotfiles && stow clj emacs zsh PRIVATE -t $HOME

## Documentation

- [Synced folders](docs/synced-folders.md)
- [VirtualBox VM settings](docs/vm-settings.md)
- [Networking](docs/networking.md)
- [Troubleshooting](docs/troubleshooting.md)
- [Tips](docs/tips.md)


## License

The MIT License (MIT)

Copyright (c) 2015 BlinkReaction

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
