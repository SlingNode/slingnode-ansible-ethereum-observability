#!/bin/bash
delimit () {
        printf "\n\n\n------------------------------------ $SLINGNODE_BOX ------------------------------------\n\n\n"
}

export SLINGNODE_BOX=generic/ubuntu2004

molecule test -s obs_only

export SLINGNODE_BOX=generic/ubuntu2204

molecule test -s obs_only

export SLINGNODE_BOX=almalinux/8

molecule test -s obs_only

export SLINGNODE_BOX=almalinux/9

molecule test -s obs_only
