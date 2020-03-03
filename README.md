# Sudo

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with sudo](#setup)
    * [Beginning with sudo](#beginning-with-sudo)

## Description

[Sudo](https://www.sudo.ws/) is a program for Unix-like computer operating systems that allows users to run programs with the security privileges of another user, by default the superuser.

This module will help you to install and configure sudo appropiate software packages.

## Setup

### Beginning with sudo

To have Puppet install Apache with the default parameters, declare the `sudo` class:

```puppet
class { 'sudo': }
```

When this class is declared with the default options, Puppet:
* Installs the appropriate sudo software package.
* Places the required configuration files in a directory.
