# mini FreeBSD portstree

This is a stripped version of port tree with the following ports:

* ports-mgmt/portmaster

The tree is intended for testing, without downloading the entire copy of the
official ports tree.

## Requirements

* subversion

## Usage

To import the latest from the official tree, run:

```sh
sh update.sh
```

The script checks out a minimal set of files and directories to build.
