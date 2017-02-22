# mini FreeBSD portstree

This is a stripped version of port tree with the following ports:

* ports-mgmt/portmaster
* ports-mgmt/pkg

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

## Managing branches

The repository has multiple branches used by other code, `ansible-role`, etc.
These branches are named after the date of the tree has been created. The
branch name is in the format of `$YY$MM$DD`, representing it was created in
that date.

To create another snapshot of the official tree, clone the repository and:

```sh
git checkout -b $YYMMDD
sh update.sh
git add .
git commit
```

Then, push the branch. Do not merge the branch into `master`.

## Modifying the code, not the trees

When you need to modify the code, such as `README.md` or `update.sh`, create a
branch from the `master`, follow the procedures described in [Creating_Issue](https://github.com/reallyenglish/ansible-role-example/tree/master/docs/Procedures/Creating_Issue)
and [Creating_Pull_Request](https://github.com/reallyenglish/ansible-role-example/tree/master/docs/Procedures/Creating_Pull_Request).

The `master` must not be updated with ports tree.

## Using the mini ports tree

Use the mini ports tree when you need to build a port, but do not care of
which, and you need to run successful build process.

Do not use `master` branch, which is supposed to be empty except
`README.md` and a support script. Use branches which are a
snapshot of the official ports tree at a certain date.
