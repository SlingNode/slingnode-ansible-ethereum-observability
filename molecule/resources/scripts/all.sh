#!/bin/bash
run_test () {
    printf "\n\n\n------------------------------------ $1 ------------------------------------\n\n\n"
    molecule test -s $1
}

run_test default
run_test obs_clients_sinlge_tier
run_test obs_only
run_test obs_only_multi_tier
