#!/bin/sh

SVN_BASE=http://svn.freebsd.org/ports/head

FILES="Mk Templates Keywords Tools ports-mgmt/pkg ports-mgmt/portmaster"

svn checkout ${SVN_BASE} . --depth immediates

for F in ${FILES}; do
    svn checkout ${SVN_BASE}/${F} ${F} --depth infinity
done
