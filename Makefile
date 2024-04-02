SHELL := bash

ROOT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

####
# Supported Make Arguments
# - TODO
####

# Setting environment variables.

# Setting DEBUG settings.

# Setup defaults for SHELLFLAGS, DEFAULT_GOAL, and PHONY

## GENERAL TARGETS ##

# Displays the actions that can be performed.
# This is the default; therefore, "make" is the same as "make help".
help:
	@echo "==============================================================="
	@echo "HELP"
	@echo "----"
	@echo "  A list of commands for executing actions on the codebase."
	@echo ""
	@echo "  Usage: make COMMAND"
	@echo "==============================================================="

## SETUP THE DEV ENRIONMENT ##
setup-env:
	@command -v nix-shell >> /dev/null 2>&1 && nix-shell $(ROOT_DIR)dev.nix  || echo "nix-shell doesn't exist, please install nix (https://nixos.org/download/#nix-install-linux)."
