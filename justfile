#!/usr/bin/env just --justfile

lint:
    just --unstable --fmt
    shfmt --write bin/services
    shellcheck --external-sources bin/services
